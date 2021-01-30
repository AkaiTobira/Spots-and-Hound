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


[System.Serializable]
public class BlockerValue{
    public BlockerValue(){}
    public BlockerValue(BlockerType key, float time){
        blockType = key;
        blockTime = time;
    }
    public BlockerType blockType;
    public float blockTime;
}

public class InputListener : MonoBehaviour {

    float _inputBlockTime = 0.25f;

    [SerializeField] List<BlockerValue> _blockers;

    [SerializeField] private DialogueSystem _dialogueSystem;

    private HashSet<BlockerType> _lockRequests = new HashSet<BlockerType>();
    private BlockerType _currentBlocker = BlockerType.None;
    private bool _recentlyUnlocked = true;
    float _timer = 0;

    void Update() {
       // UpdateBlock();

        //_timer += Time.deltaTime;

        //if( _timer < _inputBlockTime ) {
        //    return;
        //}
        
        if( PlayerInput.isMouseKeyPressed() && BlockingSettings.MemoryInputBlock ){
            UpdateUnblock();
        }

    }

    public void RequestBlock(BlockerType blocker){
        _lockRequests.Add(blocker);
    }

    public void UpdateBlock(){
        if( !_recentlyUnlocked ) return;

        if( _lockRequests.Contains( BlockerType.Dialogs ) ){
            _currentBlocker = BlockerType.Dialogs;
        }

        foreach( BlockerValue b in _blockers){
            if( b.blockType == _currentBlocker ){
                _inputBlockTime = b.blockTime;
            }
        }
        _timer          = 0;
        _recentlyUnlocked = false;

    }

    public void UpdateUnblock(){
        _dialogueSystem.Skip();
    }


}