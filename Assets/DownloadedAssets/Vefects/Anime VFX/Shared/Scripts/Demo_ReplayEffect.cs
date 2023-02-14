using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Demo_ReplayEffect : MonoBehaviour
{
    private ParticleSystem VFX;
    private AudioSource sound;
    public float loopTime;
    float currentTime;
 

    void Start()
    {
        currentTime = loopTime;
        VFX = this.GetComponent<ParticleSystem>();
        sound = this.GetComponent<AudioSource>();

    }

    // Update is called once per frame
    void Update()
    {
        currentTime -= Time.deltaTime;

        if(currentTime <= 0)
        {
            VFX.Play();
            if(sound)
            {
                sound.Play();

            }
            currentTime = loopTime;
        }
    }
}
