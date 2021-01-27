using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class ChoiceHolder : MonoBehaviour
{
    [SerializeField] DialogueSystem _responseHandler;
    [SerializeField] List<GameObject> _options;
    [SerializeField] List<TextMeshProUGUI> _optionsText;

    public void OnOptionSelect( int i ){

    }

    public void SetOptions(){

    }

    public void DisableOptions(){
        foreach( GameObject gameObject in _options){
            
        }
    }


}
