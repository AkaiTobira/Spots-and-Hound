using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MemoryEngine : MonoBehaviour
{

    private bool Locked = false;

    private CardController _selectedController;
    private string _alreadySelectedName;
    


    public void Selected( CardController controller, string selected){
        if( Locked ) return;
        controller.ShowCard();
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

    private IEnumerator DelayRemove(CardController controller){
        yield return new WaitForSeconds(1.5f);
        _selectedController.RemoveCard();
        controller.RemoveCard();
        _selectedController = null;
        Locked = false;
    }

    private IEnumerator DelayHide(CardController controller){
        yield return new WaitForSeconds(1.5f);
        _selectedController.HideCard();
        controller.HideCard();
        _selectedController = null;
        Locked = false;
    }


}
