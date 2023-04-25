using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StandUp : MonoBehaviour
{
    public void TurnOn()
    {
        Death player = GetComponentInParent<Death>();
        player.TurnOnPlayerModel();
    }
}
