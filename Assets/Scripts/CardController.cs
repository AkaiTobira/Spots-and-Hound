using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class CardController : DisplayCharacterController, IPointerDownHandler, IPointerEnterHandler, IPointerExitHandler
{

    [SerializeField] private GameObject _cardRevers;
    [SerializeField] private MemoryEngine _memory;

    public void OnEnable() {
        StartCoroutine(delayedStart());
    }

    private IEnumerator delayedStart(){
        yield return new WaitForSeconds(0.1f);
        HideCard();
    } 

    public void RemoveCard(){
        HideAll();
    }

    public void HideCard(){
        _cardRevers.SetActive(true);
    }

    public void ShowCard(){
        _cardRevers.SetActive(false);
    }

    public void OnPointerDown( PointerEventData pointer) {
        if( _cardRevers.activeSelf ){
            for( int i = 0; i < transform.childCount; i++){
                if( transform.GetChild(i).gameObject.activeSelf ){
                    _memory.Selected( this, transform.GetChild(i).gameObject.name );
                }
            }
        }
    }
    public void OnPointerEnter( PointerEventData pointer) {
        _cardRevers.transform.localScale = new Vector3( 1.2f, 1.2f, 1);
    }
    public void OnPointerExit( PointerEventData pointer) {
        _cardRevers.transform.localScale = new Vector3( 1f, 1f, 1);
    }
}
