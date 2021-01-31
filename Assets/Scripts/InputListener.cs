using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public enum BlockerType{
    None,
    Dialogs
}

public  interface IBlockable{
    void OnUnlock();
}


public class InputListener : MonoBehaviour {

    [SerializeField] private DialogueSystem _dialogueSystem;

    void Update() {
        if( PlayerInput.isMouseKeyPressed() && BlockingSettings.MemoryInputBlock ){
            UpdateUnblock();
        }
        if( PlayerInput.isExitKeyPressed()){
            Application.Quit();
        }
    }

    public void UpdateUnblock(){
        _dialogueSystem.Skip();
    }

}