using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;



public class DialogueSystem : MonoBehaviour, IBlockable
{
    [SerializeField] private GameObject _currentCharacterNameContainer;
    [SerializeField] private TextMeshProUGUI _currentCharacterName;
    [SerializeField] private TextMeshProUGUI _currentText;
    [SerializeField] private InputListener _inputListener;

    [SerializeField] private DisplayCharacterController _characterNamePics;
    [SerializeField] private DisplayCharacterController _locationPics;
    [SerializeField] private List<DisplayCharacterController> _displayCharacterControllers;
    [SerializeField] private ChoiceHolder _choices;

    [SerializeField] private CameraShake _shake;
    [SerializeField] private DisplayCharacterController _memory;

    [SerializeField] private HPSystem _hpSystem;


    public bool ForceSkip = false;
    private bool ForceEnd = false;

    private bool GameOverInProgress = false;


    private string _currentSquenceIndex;
    private string _nextSequenceIndex;

    private bool isOptionSelect = false;


    public void Skip(){
        if( ForceSkip ){
            if( isOptionSelect ) return;
            ProcessNextDialogue();
        }else{
            ForceSkip = true;
        }
    }

    public void OnUnlock(){}

    public void ProcessNextDialogue(){
        if( string.IsNullOrEmpty(_nextSequenceIndex) ) return;
        if( _nextSequenceIndex == "SKIP" ) return;
        if( _nextSequenceIndex == "OVER" ) return;

        LoadDialog(DialogLoader.Dialogs.GetDialogueInfo(_nextSequenceIndex));
    }

    private List<string> _textMarkers = new List<string>();

    void Start() {
        DialogLoader.Dialogs.LoadDialogs();
        LoadDialog( DialogLoader.Dialogs.GetDialogueInfo("1") );
    }

    public void ForceNextOption( string id){
        _nextSequenceIndex = id;
        isOptionSelect     = false;
    }

    void LoadDialog( DialogueEntry dialoge ){

        ForceSkip = false;

        SetupText( dialoge.Text, dialoge.ID );
        SetupCharacterNamePic( dialoge.Character );
        SetupCharacterPicture( dialoge.Picture );
        SetupOptions( dialoge.Options );
        SetupLocation( dialoge.Location);
        SetupCamera( dialoge.Camera );
        SetupSound( dialoge.Music);
        SetupMemory( dialoge.Memory );
        SetupHpChange( dialoge.MoreSettings );

        //_textMarkers.Add( dialoge.Next );
        _currentSquenceIndex = dialoge.ID;
        _nextSequenceIndex   = dialoge.Next;
        _inputListener.RequestBlock(BlockerType.Dialogs);
    }

    public void GameOver(){
        _nextSequenceIndex = "GAMEOVER";
        ForceSkip = false;
        ProcessNextDialogue();
    }

    private void SetupHpChange( AdditionalSetting setting){
        if( setting == null ) return;

        _hpSystem.ChangeHp( setting.HpChange );
    }

    private void SetupMemory( MemoryInfo memoryInfo){
        if( memoryInfo == null) return;


        if( !string.IsNullOrEmpty(memoryInfo.Name) ){
            _memory.Show( memoryInfo.Name );
        }

        if( !string.IsNullOrEmpty(memoryInfo.ShowInterface) ){
            
            if( memoryInfo.ShowInterface == "Yes"){
                _choices.gameObject.SetActive(true);
                gameObject.SetActive(true);
            }else if( memoryInfo.ShowInterface == "No" ){
                _choices.gameObject.SetActive(false);
                gameObject.SetActive(false);
            }

        }


        if( !string.IsNullOrEmpty(memoryInfo.UnlockMemory) ){
            if( memoryInfo.UnlockMemory == "Yes"){
                BlockingSettings.MemoryInputBlock = false;
            }else if( memoryInfo.UnlockMemory == "No" ){
                BlockingSettings.MemoryInputBlock = true;
            }
        }
    }

    struct Marker{
        public string Inside;
        public int Begin_begin;
        public int Begin_end;

        public string EndMark;
        public int End_begin;
        public int End_end;
    }

    private void SetupText( string text, string dialogueID ){
        if(string.IsNullOrEmpty(text)) return;

        if( text == "None"){
            _currentText.text = "";
            return;
        }

        List<Marker> markers = new List<Marker>();

        for( int i = 0; i < text.Length; i++){
            Marker m = new Marker();
            if( ParseMarker( out m, text, i)){
                markers.Add(m);
            }
        }
        if( gameObject.activeSelf == false) gameObject.SetActive(true);
        StartCoroutine(TypeLetter(markers, text, 0, dialogueID));
    }

    private IEnumerator TypeLetter( List<Marker> markers, string text, int index, string dialogueID ){
        yield return new WaitForSeconds(0.1f);
        if( dialogueID != _currentSquenceIndex ) yield break;

        if( index >= text.Length + 1 ) {
            ForceSkip = true;
            yield break;
        }

        if( ForceSkip ){
            index = text.Length;
        }

        bool indexChange = true;
        while( indexChange ){
            indexChange = false;
            if( index != text.Length && text[index] == '<' ){
                foreach( Marker m in markers){
                    if( index == m.Begin_begin){
                        index += m.Begin_end - m.Begin_begin + 1;
                        indexChange = true;
                    }

                    if( index == m.End_begin){
                        index += m.End_end - m.End_begin + 1;
                        indexChange = true;
                    }
                }
            }
        }

        string newText1 = text;
        foreach( Marker m in markers){

            if( m.Begin_end < index ){
                newText1 = newText1.Remove( m.Begin_begin, m.Begin_end - m.Begin_begin + 1 );
                newText1 = newText1.Insert( m.Begin_begin, m.Inside);
            }
            if( m.End_end < index ){
                newText1 = newText1.Remove( m.End_begin, m.End_end - m.End_begin + 1 );
                newText1 = newText1.Insert( m.End_begin, m.EndMark);
            }
        }

        _currentText.text = newText1.Substring(0, index).Replace("`", "");

        StartCoroutine( TypeLetter(markers, text, index+1, dialogueID));
    }

    private bool ParseMarker( out Marker m, string text, int i){
        m = new Marker();
        m.Begin_begin = text.IndexOf("<" + i.ToString());
        if( m.Begin_begin == -1){
            return false;
        }
        for( int j = m.Begin_begin; j < text.Length; j++){
            if( j == m.Begin_begin+1){
                m.Inside += "`";
                continue;
            }
            m.Inside += text[j];
            if( text[j] == '>'){
                m.Begin_end = j;
                break;
            }
        }
        m.End_begin = text.IndexOf("</" + i.ToString());
        for( int j = m.End_begin; j < text.Length; j++){
            if( j == m.End_begin+2) {
                m.EndMark += "`";
                continue;
            }

            if( j == -1 ){
                Debug.LogError( " EndMarker is not valid should be=" + m.Inside.Replace("<", "</") );
                return false;
            }

            m.EndMark += text[j];
            if( text[j] == '>'){
                m.End_end = j;
                break;
            }
        }

        return true;
    }


    private void SetupSound( MusicInfo music){
        if( music == null ) return;

        if( music.Background != null ){
            AudioSystem.Instance.PlayMusic( music.Background.Name, music.Background.Volume );
        }

        if( music.Oneshot != null ){
            AudioSystem.Instance.PlayEffect( music.Oneshot.Name, music.Oneshot.Volume );
        }

    }

    private void SetupCamera( CameraInfo camera){
        if( camera == null ) return;
        _shake.TriggerShake( camera.Duration, camera.Magnitude);
    }

    private void SetupLocation( string location){
        bool locationNameValid = string.IsNullOrEmpty(location);
        if( !locationNameValid ){
            _locationPics.Show(location);
        }
    }

    private void SetupOptions( OptionInfo[] options ){
        if( options == null ) return;
        isOptionSelect = true;
        _choices.SetOptions( options );
    }

    private void SetupCharacterPicture( PictureInfo picture ){
        if( picture == null) return;

        if( picture.LeftID != null){
            _displayCharacterControllers[0].Show(picture.LeftID);
        }

        if( picture.RightID != null){
            _displayCharacterControllers[1].Show(picture.RightID);
        }
    }

    private void SetupCharacterNamePic( string character ){
        
        bool characterNameValid = string.IsNullOrEmpty(character);

        if( !characterNameValid ){
            _characterNamePics.Show(character);
        }

    }

    private void SetupCharacterName( string character ){
        
        bool characterNameValid = string.IsNullOrEmpty(character) || character == "None";

        _currentCharacterNameContainer.gameObject.SetActive(!characterNameValid);
        _currentCharacterName.text = character;
    }

}
