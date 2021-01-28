using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;



public class DialogueSystem : MonoBehaviour, IBlockable
{

    [SerializeField] private DialogLoader _loader;
    [SerializeField] private GameObject _currentCharacterNameContainer;
    [SerializeField] private TextMeshProUGUI _currentCharacterName;
    [SerializeField] private TextMeshProUGUI _currentText;
    [SerializeField] private InputListener _inputListener;

    [SerializeField] private DisplayCharacterController _characterNamePics;
    [SerializeField] private DisplayCharacterController _locationPics;
    [SerializeField] private List<DisplayCharacterController> _displayCharacterControllers;
    [SerializeField] private ChoiceHolder _choices;

    [SerializeField] private CameraShake _shake;


    public void OnUnlock(){

        if( _textMarkers.Count == 0 ){
            return;
        }

        if( _textMarkers[0] == "SKIP" ){
            _textMarkers.RemoveAt(0);
            OnUnlock();
            return;
        }

        if( _textMarkers[0] == "OVER") {
            _textMarkers.RemoveAt(0);
            return;
        }
        LoadDialog(_loader.GetDialogueInfo(_textMarkers[0]));
        _textMarkers.RemoveAt(0);
    }

    private List<string> _textMarkers = new List<string>();

    void Start() {
        LoadDialog( _loader.GetDialogueInfo("1") );
    //    LoadDialog( _loader.GetDialogueInfo("2") );
    }

    public void AddNextTextOption( string id){
        _textMarkers.Add(id);
        OnUnlock();
    }

    void LoadDialog( DialogueEntry dialoge ){

        
        _currentText.text          = dialoge.Text;

        SetupCharacterNamePic( dialoge.Character );
        SetupCharacterPicture( dialoge.Picture );
        SetupOptions( dialoge.Options );
        SetupLocation( dialoge.Location);
        SetupCamera( dialoge.Camera );
        SetupSound( dialoge.Music);

        //_shake.TriggerShake(0.3f, 0.5f);

        _textMarkers.Add( dialoge.Next );
        _inputListener.RequestBlock(BlockerType.Dialogs);
    }

    private void SetupSound( MusicInfo music){
        if( music == null ) return;

        if( music.Type == "Oneshot"){
            AudioSystem.Instance.PlayEffect( music.Name, music.Volume );
        }
        if( music.Type == "Background"){
            AudioSystem.Instance.PlayMusic( music.Name, music.Volume );
        }

    }

    private void SetupCamera( CameraInfo camera){
        if( camera == null ) return;
        _shake.TriggerShake( camera.Duration, camera.Magnitude);
    }

    private void SetupLocation( string location){
        bool locationNameValid = string.IsNullOrEmpty(location);
        if( !locationNameValid ){
            _locationPics.ShowCharacter(location);
        }
    }

    private void SetupOptions( OptionInfo[] options ){
        if( options == null ) return;
        _choices.SetOptions( options );
    }

    private void SetupCharacterPicture( PictureInfo picture ){
        if( picture == null) return;

        if( picture.LeftID != null){
            _displayCharacterControllers[0].ShowCharacter(picture.LeftID);
        }

        if( picture.RightID != null){
            _displayCharacterControllers[1].ShowCharacter(picture.RightID);
        }
    }

    private void SetupCharacterNamePic( string character ){
        
        bool characterNameValid = string.IsNullOrEmpty(character);

        if( !characterNameValid ){
            _characterNamePics.ShowCharacter(character);
        }

    }

    private void SetupCharacterName( string character ){
        
        bool characterNameValid = string.IsNullOrEmpty(character) || character == "None";

        _currentCharacterNameContainer.gameObject.SetActive(!characterNameValid);
        _currentCharacterName.text = character;
    }

}
