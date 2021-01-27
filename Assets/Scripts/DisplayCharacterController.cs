using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class DisplayPosition{
    public DisplayPosition(){}
    public DisplayPosition(string name, GameObject obj){
        _name = name;
        _Obj = obj;
    }
    public string _name;
    public GameObject _Obj;
}



public class DisplayCharacterController : MonoBehaviour
{
    [SerializeField] private List<DisplayPosition> _characterList;

    public void ShowCharacter( string characterID ){

        if( characterID == "None"){
            HideCharacter();
            return;
        }

        bool keyIsCorrect = false;

        foreach( DisplayPosition pos in _characterList ){
            pos._Obj.SetActive( pos._name == characterID );
            if( pos._name == characterID ){
                keyIsCorrect = true;
            }
        }

        if( keyIsCorrect == false){
            Debug.LogError("Didn't found character picture in=" + gameObject.name + " check this!! incorect is=" + characterID );
        }
    }

    private void HideCharacter(){
        foreach( DisplayPosition pos in _characterList ){
            pos._Obj.SetActive( false );
        }
    }

}
