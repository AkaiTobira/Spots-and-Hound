using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MemoryEngine : MonoBehaviour
{

    private bool Locked = false;

    private CardController _selectedController;
    private string _alreadySelectedName;
    
    private int _cleared = 0;

    [SerializeField] private DialogueSystem _dialogueSystem;
    [SerializeField] private string _nextDialogue; 

    void OnEnable() {
        _selectedController = null;
        _alreadySelectedName = "";
        Locked = false;
        _cleared = 0;
    }

    public void Selected( CardController controller, string selected){
        if( Locked ) return;
        controller.ShowCard();
        if( _cleared == transform.childCount-1){
            StartCoroutine( OnFinish() );
        }

        if( _selectedController == null ){
            _selectedController = controller;
            _alreadySelectedName = selected;
            return;
        }
        Locked = true;
        if( _alreadySelectedName.Contains( selected.Substring(0, selected.Length-1) )){
            StartCoroutine( DelayRemove(controller) );
        }else{
            StartCoroutine( DelayHide(controller));
        }
    }

    private IEnumerator OnFinish(){
        yield return new WaitForSeconds(1f);
        _dialogueSystem.ForceNextOption( _nextDialogue );
        _dialogueSystem.ProcessNextDialogue();
    }

    private IEnumerator DelayRemove(CardController controller){
        yield return new WaitForSeconds(1f);
        _selectedController.RemoveCard();
        controller.RemoveCard();
        _selectedController = null;
        Locked = false;
        _cleared += 2;
    }

    private IEnumerator DelayHide(CardController controller){
        yield return new WaitForSeconds(1f);
        _selectedController.HideCard();
        controller.HideCard();
        _selectedController = null;
        Locked = false;
    }


}
