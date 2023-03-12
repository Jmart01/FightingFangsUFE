using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UFE3D;
using System;

public class EchoMaterialChange : MonoBehaviour
{
    public GameObject bodyGrp;
    public Material[] materials;
    private void Awake()
    {
        UFE.OnMove += this.OnMove;
    }
    private void OnDisable()
    {
        UFE.OnMove -= this.OnMove;
    }

    private void OnMove(MoveInfo move, ControlsScript player)
    {
        if(player!= null & move != null)
        {
            if(player == this.GetComponentInParent<ControlsScript>())
            {
                //Debug.Log(move.name + player.name);
                if(move.name == "Echo_Down_Special")
                {
                    //Material bodyMatToChange = bodyGrp.GetComponent<SkinnedMeshRenderer>().materials[1];
                    //for(int CurrentMat = 0; CurrentMat< materials.Length; CurrentMat++) 
                    //{
                        
                    //}
                    
                    //Debug.Log("should change colors");
                }
            }
        } 
    }
}
