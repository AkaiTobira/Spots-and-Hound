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


    [SerializeField] private List<DisplayCharacterController> _displayCharacterControllers;
    [SerializeField] private ChoiceHolder _choices;


    public void OnUnlock(){

        if( _textMarkers.Count == 0 ){
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

    void LoadDialog( DialogueEntry dialoge ){
        _currentText.text          = dialoge.Text;

        SetupCharacterName( dialoge.Character );
        SetupCharacterPicture( dialoge.Picture );


        //_currentCharacterName.text = dialoge.Character;

        _textMarkers.Add( dialoge.Next );


        //Debug.Log( dialoge.)

        _inputListener.RequestBlock(BlockerType.Dialogs);
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

    private void SetupCharacterName( string name ){
        
        bool characterNameValid = string.IsNullOrEmpty(name) || name == "None";

        _currentCharacterNameContainer.gameObject.SetActive(!characterNameValid);
        _currentCharacterName.text = name;
    }

}
