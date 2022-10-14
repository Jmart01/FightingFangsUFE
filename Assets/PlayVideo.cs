using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Video;

public class PlayVideo : MonoBehaviour
{
    [SerializeField] GameObject[] Panels;
    [SerializeField] VideoClip[] clips;
    [SerializeField] VideoPlayer videoPlayer;
    int currentPanelIndex = 0;
    int clipIndex = 0;
    // Start is called before the first frame update
    void Start()
    {
        Panels[currentPanelIndex].SetActive(true);
    }

    // Update is called once per frame
    void Update()
    {
        if(Input.GetButtonDown("ShowVideoPanel"))
        {
            Debug.Log("Should change panels");
            Panels[currentPanelIndex].SetActive(false);
            currentPanelIndex++;
            if(currentPanelIndex < Panels.Length)
            {
                Panels[currentPanelIndex].SetActive(true);
            }
        }
        if(Input.GetButtonDown("ShowNextClip"))
        {
            if(clipIndex < clips.Length)
            {
                clipIndex++;
            }
            videoPlayer.clip = clips[clipIndex];
            videoPlayer.Play();
        } if(Input.GetButtonDown("ShowLastClip"))
        {
            if(clipIndex > 0)
            {
                clipIndex--;
            }
            videoPlayer.clip = clips[clipIndex];
        }
    }
}
