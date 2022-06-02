using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NightClubLightFlasher : MonoBehaviour
{
    private Color[] colours = new Color[7];
    public float time;
    public float repeatRate;

    void Start()
    {
        colours[0] = Color.blue;
        colours[1] = Color.cyan;
        colours[2] = Color.green;
        colours[4] = Color.magenta;
        colours[5] = Color.red;
        colours[6] = Color.yellow;
    }

    void Update()
    {
        InvokeRepeating("ChangeColor", time, repeatRate);
    }

    void ChangeColor()
    {
        GetComponent<Light>().color = colours[Random.Range(0, colours.Length - 1)];
    }
}
