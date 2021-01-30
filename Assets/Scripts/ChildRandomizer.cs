using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ChildRandomizer : MonoBehaviour
{
    [SerializeField] private int _valids = 4;
    void Start()
    {
        transform.GetChild(0).GetComponent<DisplayCharacterController>().Show("0");
        for( int i = 0; i< _valids; i++){
            int childIndex = i * 2 + 1;
            transform.GetChild(childIndex).GetComponent<DisplayCharacterController>().Show( (i+1).ToString() + "A" );
            transform.GetChild(childIndex+1).GetComponent<DisplayCharacterController>().Show( (i+1).ToString() + "B" );
        }

        for( int i = 0; i < 500; i++){
            int index = Random.Range(0, transform.childCount);
            transform.GetChild(index).SetAsLastSibling();
        }

        StartCoroutine( DisableGrid() );
    }

    void OnEnable() {
        GetComponent<GridLayoutGroup>().enabled = true;
        Start();
    }

    IEnumerator DisableGrid(){
        yield return new WaitForSeconds(1);
        GetComponent<GridLayoutGroup>().enabled = false;
    }
}
