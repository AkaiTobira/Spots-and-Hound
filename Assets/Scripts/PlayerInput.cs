using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;



public static class PlayerInput
{
    public static bool isMouseKeyPressed(){

        bool AndoidTouchDetected = false;
        for( int i = 0; i < Input.touchCount; i++ ){
            if( Input.touches[i].phase == TouchPhase.Ended ){
                AndoidTouchDetected = true;
            }
        }

        return Input.GetKeyDown(KeyCode.X) || Input.GetButtonDown("Fire1") || AndoidTouchDetected;
    }

    public static bool isExitKeyPressed(){
        return Input.GetKeyDown(KeyCode.Escape) || Input.GetKeyDown(KeyCode.Backspace);
    }


}