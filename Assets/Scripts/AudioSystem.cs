using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

[System.Serializable]
public class AudioTrack{
    public AudioTrack(){}
    public AudioTrack(string name, AudioClip obj){
        _name = name;
        _clip = obj;
    }
    public string _name;
    public AudioClip _clip;
    [HideInInspector] public float Volume;
    [HideInInspector] public float TargetVolume;
    [HideInInspector] public float Pitch;
}

public class AudioSystem : MonoBehaviour
{
	[SerializeField] public AudioSource EffectsSource;
	[SerializeField] public AudioSource MusicSource;

	public float LowPitchRange = .95f;
	public float HighPitchRange = 1.05f;
	public static AudioSystem Instance = null;

    public List<AudioTrack> _clips;
    public List<AudioTrack> _musics;
	private void Awake()
	{
		if (Instance == null)
		{
			Instance = this;
	    	DontDestroyOnLoad(gameObject);
    	}
		else if (Instance != this)
		{
			Destroy(gameObject);
		}
	}

    private List<AudioTrack> _musicToPlay = new List<AudioTrack>();

    [SerializeField] private List<AudioSource> _effectsPLayers = new List<AudioSource>();
	public void PlayEffect(string clipName, float volume, bool randomPitch=false)
	{
        if( string.IsNullOrEmpty(clipName) ) return;

        bool clipSelected = false;
        foreach( AudioTrack at in _clips){

            if( at._name == clipName){
                clipSelected = true;

                for( int i = 0; i < _effectsPLayers.Count; i++){
                    if( _effectsPLayers[i].isPlaying ) continue;
                    
                    if( randomPitch ){
                        float pitch = Random.Range(LowPitchRange, HighPitchRange);
		                _effectsPLayers[i].pitch = pitch;
                    }
                	_effectsPLayers[i].clip   = at._clip;
                    _effectsPLayers[i].volume = volume;
                    _effectsPLayers[i].Play();
                    return;
                }
            }
        }
        if( !clipSelected ){
            Debug.LogError("Didn't found sound=" + clipName );
        }
	}

	public void PlayMusic(string clipName, float volume)
	{
        if( string.IsNullOrEmpty(clipName) ) return;

        bool clipSelected = false;
        foreach( AudioTrack at in _musics){
            if( at._name == clipName){
                clipSelected = true;

                if( MusicSource.isPlaying ){
                    at.TargetVolume = volume;
                    _musicToPlay2.Add( at );
                }else{
                    MusicSource.clip   = at._clip;
                    MusicSource.volume = volume;
                    MusicSource.Play();
                }
            }
        }
        if( !clipSelected ){
            Debug.LogError("Didn't found music=" + clipName );
        }
	}


    void Update() {
        
        if( _musicToPlay.Count != 0 ){
            if( !EffectsSource.isPlaying ){
                EffectsSource.clip   = _musicToPlay[0]._clip;
                EffectsSource.volume = _musicToPlay[0].TargetVolume;
                EffectsSource.Play();
                _musicToPlay.RemoveAt(0);
            }
        }

        if( _musicToPlay2.Count != 0){
            if( MusicSource.isPlaying){
                if( _musicToPlay2[0]._clip == MusicSource.clip ){
                    float musicChange = Mathf.Sign(_musicToPlay2[0].TargetVolume - MusicSource.volume) * 2f * Time.deltaTime;
                    if( musicChange < 0){
                        MusicSource.volume = Mathf.Max( _musicToPlay2[0].TargetVolume, MusicSource.volume + musicChange );
                    }else{
                        MusicSource.volume = Mathf.Min( _musicToPlay2[0].TargetVolume, MusicSource.volume + musicChange  );
                    }

                    if( Mathf.Abs( _musicToPlay2[0].TargetVolume - MusicSource.volume ) <= 0.001 ){
                        _musicToPlay2.RemoveAt(0);
                    }
                }else{
                    if( MusicSource.volume > 0){
                        MusicSource.volume = Mathf.Max( 0, MusicSource.volume - (2f* Time.deltaTime) );
                    }else{
                        MusicSource.clip   = _musicToPlay2[0]._clip;
                        MusicSource.volume = 0;
                        MusicSource.Play();
                    }
                }
            }
        }

    }

    private List<AudioTrack> _musicToPlay2 = new List<AudioTrack>();

	public void RandomSoundEffect(params AudioClip[] clips)
	{
		int randomIndex = Random.Range(0, clips.Length);
		float randomPitch = Random.Range(LowPitchRange, HighPitchRange);

		EffectsSource.pitch = randomPitch;
		EffectsSource.clip = clips[randomIndex];
		EffectsSource.Play();
	}
}