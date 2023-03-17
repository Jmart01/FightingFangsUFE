using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UFE3D;
using System;
using FPLibrary;

public class EchoMaterialChange : MonoBehaviour
{
    public GameObject bodyGrp;
    public Material[] mats;
    int CurrentMat = 0;
    Fix64 _originalMoveForwardSpeed;
    Fix64 _originalMoveBackSpeed;
    private void Awake()
    {
        UFE.OnMove += this.OnMove;
    }
    private void OnDisable()
    {
        UFE.OnMove -= this.OnMove;
    }
    private void Start()
    {
        ControlsScript controlscript = GetComponentInParent<ControlsScript>();
        if (controlscript != null)
        {
             _originalMoveForwardSpeed = controlscript.myInfo.physics._moveForwardSpeed;
            _originalMoveBackSpeed = controlscript.myInfo.physics._moveBackSpeed;
        }
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
                    CheckStance(player);
                    
                    SkinnedMeshRenderer renderer = bodyGrp.GetComponent<SkinnedMeshRenderer>();
                    Material[] MeshMats = renderer.materials;
                    CurrentMat++;
                    if (CurrentMat > 2)
                    {
                        CurrentMat = 0;
                    }
                    MeshMats[1] = mats[CurrentMat];
                    renderer.materials = MeshMats;
                    //bodyGrp.GetComponent<SkinnedMeshRenderer>().materials[1] = materials[CurrentMat];
                    Debug.Log(MeshMats[1].name);
                }
            }
        } 
    }
    
    private void CheckStance(ControlsScript player)
    {
        UFE3D.CharacterInfo character = player.myInfo;
        if(player.currentCombatStance == CombatStances.Stance1)
        {
            //Once the stance changes from stance1 to stance2, lowers the move speed
            player.myInfo.physics._moveBackSpeed = 4.5;
            player.myInfo.physics._moveForwardSpeed = 5.5;
        }
        Debug.Log("Switched Stances");
        if(player.currentCombatStance == CombatStances.Stance2)
        {
            if(character != null)
            {
                player.myInfo.physics._moveBackSpeed = 6.5;
                player.myInfo.physics._moveForwardSpeed = 7.5;
            }
        }
        //need to do the same thing for the third combat stance

    }
    
    
}
