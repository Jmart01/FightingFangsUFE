using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SelectSound : MonoBehaviour
{
    [SerializeField] float VoiceVolume;
    [SerializeField] float MusicVolume;

    private void Start()
    {
        UFE.SetSoundFXVolume(VoiceVolume);
        UFE.SetMusicVolume(MusicVolume);
    }

}
