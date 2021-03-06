﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class ChoiceHolder : MonoBehaviour
{
    [SerializeField] DialogueSystem _responseHandler;
    [SerializeField] List<GameObject> _options;
    [SerializeField] List<TextMeshProUGUI> _optionsText;

    OptionInfo[] _optionsResponses;

    void Start() {
        DisableOptions();
    }

    public void OnOptionSelect( int i ){
        if( !_responseHandler.ForceSkip ) return;
        DisableOptions();
        _responseHandler.ForceNextOption( _optionsResponses[i].Next );
        _responseHandler.ProcessNextDialogue();
        AudioSystem.Instance.PlayEffect( "option_selected", 0.5f );
    }

    public void SetOptions( OptionInfo[] options ){
        gameObject.SetActive(true);

        _optionsResponses = options;
        for( int i = 0; i < _options.Count; i++){
            if( i < options.Length ){
                _optionsText[i].text = options[i].Name;
            }
            _options[i].SetActive(i < options.Length);
        }
    }

    public void DisableOptions(){
        foreach( GameObject gameObject in _options){
            gameObject.SetActive(false);
        }
    }
}
