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
    [SerializeField] protected List<DisplayPosition> _characterList;

    void Awake() {
        HideAll();

    //    string ss = "";
    //    foreach( DisplayPosition pos in _characterList ){
    //        ss += '"' + pos._name + '"' + ", " ;
    //    }
    //    Debug.Log(ss);
    }

    public void Show( string characterID ){

        if( characterID == "None"){
            HideAll();
            return;
        }

        bool keyIsCorrect = false;


        HideAll();
        foreach( DisplayPosition pos in _characterList ){
            pos._Obj.SetActive( pos._name == characterID );
            if( pos._name == characterID ){
                keyIsCorrect = true;
            }
        }

        if( keyIsCorrect == false){
            Debug.LogError("Didn't picture in=" + gameObject.name + ". Incorect is=" + characterID );
        }
    }

    protected void HideAll(){
        foreach( DisplayPosition pos in _characterList ){
            pos._Obj.SetActive( false );
        }
    }

}
