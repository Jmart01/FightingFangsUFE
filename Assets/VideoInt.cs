using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VideoInt : MonoBehaviour
{
    private int amtToPlay = 0;

    public int GetamtToPlay()
    {
        return amtToPlay;
    }

    public void SetamtToPlay()
    {
        amtToPlay += 1;
    }
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
