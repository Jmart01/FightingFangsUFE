using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.Rendering.HighDefinition;

public class CameraControl : MonoBehaviour
{
    [SerializeField] GameObject player1;
    [SerializeField] GameObject player2;
    float initialZValue;
    GameObject skyFogVolume;
    DepthOfField dof;
    Volume volume;
    
    void Awake()
    {
        initialZValue = gameObject.transform.position.z;
    }

    void Update()
    {
        float characterDistance = Vector3.Distance(player1.transform.position, player2.transform.position);
        float characterDistanceAverage = (player1.transform.position.x + player2.transform.position.x) / 2;
        transform.position = new Vector3(characterDistanceAverage, transform.position.y, Mathf.Clamp(-characterDistance*1.5f, -12f, -6f));
    }
}
