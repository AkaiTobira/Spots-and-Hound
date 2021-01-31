using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using System.Threading.Tasks;

public class MainMenuController : MonoBehaviour
{
    [SerializeField] private GameObject LoadingScreen;

    IEnumerator LoadNextScene ()
    {
        LoadAsynch();
        AsyncOperation loadGameScene = SceneManager.LoadSceneAsync( "SampleScene" );
        while( !loadGameScene.isDone ){
            yield return new WaitForEndOfFrame();
        }
        Debug.Log("Load All");
        yield break;
    }

    private async void LoadAsynch(){
        LoadingScreen.SetActive(true);
        while( LoadingScreen.activeSelf == false){
            await Task.Yield();
        }
        Debug.Log( "AsynchLoad ");
        LoadAsynch2();
    }

    private async void LoadAsynch2(){
        DialogLoader.Dialogs.LoadDialogs();
        AsyncOperation loadGameScene = SceneManager.LoadSceneAsync( "SampleScene" );
        while( DialogLoader.Dialogs.isLoaded == false && !loadGameScene.isDone ){
            await Task.Yield();
        }
        Debug.Log( "AsynchLoad is Complete");
    }


    public void OnPlay(){
        
        LoadAsynch();
    }

    public void OnExit(){
        Application.Quit();
    }

}
