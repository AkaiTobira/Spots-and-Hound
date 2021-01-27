using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;



public static class PlayerInput
{
    public static bool isMouseKeyPressed(){
        return Input.GetKeyDown(KeyCode.X) || Input.GetButtonDown("Fire1");
    }

}