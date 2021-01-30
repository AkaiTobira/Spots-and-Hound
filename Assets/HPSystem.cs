using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HPSystem : MonoBehaviour
{
    [SerializeField] private List<Animator> _hpNotifiers;
    [SerializeField] private int _MaxHp = 4;

    private int _hp;

    void Start() {
        _hp = 5;
        ChangeHp();
    }

    public void ChangeHp(int change = 0){
        _hp += change;
        _hp = Mathf.Min(Mathf.Max( _hp, 0 ), _MaxHp);

        for( int i = 0; i < _hpNotifiers.Count; i++){
            _hpNotifiers[i].SetBool("IsActive", _hp > i);
        }

    }
}
