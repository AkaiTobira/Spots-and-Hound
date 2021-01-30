using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using TMPro;

[System.Serializable]
public class PictureInfo{
    public string LeftID;
    public string RightID;
}

[System.Serializable]
public class CameraInfo{
    public float Duration;
    public float Magnitude;
}

[System.Serializable]
public class OptionInfo{
    public string Name;
    public string Next;
}

[System.Serializable]
public class OneshotInfo{
    public float Volume;
    public string Name;
}

[System.Serializable]
public class BackgroundInfo{
    public float Volume;
    public string Name;
}

[System.Serializable]
public class MusicInfo{
    public OneshotInfo Oneshot;
    public BackgroundInfo Background;
}

[System.Serializable]
public class MemoryInfo{
    public string InterfaceOption;
    public string Name;
}


[System.Serializable]
public class DialogueEntry{
    public string ID;
    public string Text;
    public string Next;
    public string Character;
    public string Location;
    public string Shake;
    public MusicInfo Music;
    public PictureInfo Picture;
    public MemoryInfo Memory;
    public CameraInfo Camera;
    public OptionInfo[] Options;
}

public class DialogLoader : MonoBehaviour
{
    [System.Serializable] 
    public class FileStructure{
        public DialogueEntry[] Entries;
    }

    [SerializeField] private List<string> _path;
    [SerializeField] private TextMeshProUGUI _debug;

    private Dictionary<string, DialogueEntry> _dialogueCatalog = new Dictionary<string, DialogueEntry>();

    void Awake() {

        foreach (string f in _path)
        {
            string jsonFile = Resources.Load<TextAsset>(f).ToString();
            FileStructure newBiesValues = JsonUtility.FromJson<FileStructure>(jsonFile);

            for( int i = 0; i < newBiesValues.Entries.Length; i++){
                DialogueEntry entry = newBiesValues.Entries[i];

                if( _dialogueCatalog.ContainsKey(entry.ID) ){
                    Debug.LogError("Dialogue system contains two the same ID=" + entry.ID);
                }

                _dialogueCatalog[entry.ID] = entry;
            }

            Debug.Log("File loaded :" + f);
        }
    }

    public DialogueEntry GetDialogueInfo( string infoID ){

        if( _dialogueCatalog.TryGetValue(infoID, out DialogueEntry newInfo))
        {
            Debug.Log("Returning dialog id=" + infoID );
            return newInfo;
        }

        return new DialogueEntry { Text="Dialogue system error: Not valid ID in sequence", Next="OVER" };
    }
}
