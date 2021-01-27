using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.IO;


[System.Serializable]
public class PictureInfo{
    public string LeftID;
    public string RightID;
}


[System.Serializable]
public class DialogueEntry{
    public string ID;
    public string Text;
    public string Next;
    public string Character;
    public PictureInfo Picture;
}

public class DialogLoader : MonoBehaviour
{
    [System.Serializable] 
    public class FileStructure{
        public DialogueEntry[] Entries;
    }

    [SerializeField] private List<string> _path;

    private Dictionary<string, DialogueEntry> _dialogueCatalog = new Dictionary<string, DialogueEntry>();

    void Awake() {

        string targetPath = "/";
        foreach( string folder in _path){
            targetPath += folder + "/";
        }

        DirectoryInfo dir = new DirectoryInfo(Application.dataPath + targetPath);
        FileInfo[] info = dir.GetFiles("*.json");

        foreach (FileInfo f in info)
        {
            string jsonFile = Resources.Load<TextAsset>( "Dialogue/" + f.Name.Replace(".json","")).ToString();
            FileStructure newBiesValues = JsonUtility.FromJson<FileStructure>(jsonFile);

            for( int i = 0; i < newBiesValues.Entries.Length; i++){
                DialogueEntry entry = newBiesValues.Entries[i];

                if( _dialogueCatalog.ContainsKey(entry.ID) ){
                    Debug.LogError("Dialogue system contains two the same ID=" + entry.ID);
                }

                _dialogueCatalog[entry.ID] = entry;
            }
        }
    }

    public DialogueEntry GetDialogueInfo( string infoID ){

        if( _dialogueCatalog.TryGetValue(infoID, out DialogueEntry newInfo))
        {
            return newInfo;
        }

        return new DialogueEntry { Text="Dialogue system error: Not valid ID in sequence", Next="OVER" };
    }
}
