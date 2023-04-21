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
    Fix64 _originalMoveForwardSpeed = 7.5;
    Fix64 _originalMoveBackSpeed = 6.5;
    bool _hasShield;

    private void Awake()
    {
        UFE.OnMove += this.OnMove;
        UFE.OnHit += this.OnHit;
        UFE.OnRoundBegins += this.OnRoundBegins;
    }

    private void OnDisable()
    {
        UFE.OnMove -= this.OnMove;
        UFE.OnHit -= this.OnHit;
        UFE.OnRoundBegins -= this.OnRoundBegins;
    }

    private void OnRoundBegins(int newInt)
    {
        ControlsScript player = this.GetComponentInParent<ControlsScript>();
        //Debug.Log(player.currentCombatStance);
        if(player.currentCombatStance != CombatStances.Stance1)
        {
            player.currentCombatStance = CombatStances.Stance1;
            CheckStance(player);
        }
        if(CurrentMat != 0)
        {
            //Debug.Log(CurrentMat);
            CurrentMat = 2;
            ChangeMats();
        }
        //throw new NotImplementedException();
    }

    


    private void OnHit(HitBox strokeHitBox, MoveInfo move, ControlsScript player)
    {
        //player will always refer to the person doing the move that hits the other person
        if(player.target == this.GetComponentInParent<ControlsScript>())
        {
            //Debug.Log(player.target.name);
            //Debug.Log(move.name);
            if (player.target == GetComponentInParent<ControlsScript>() && this._hasShield)
            {
                if(player == UFE.p1ControlsScript)
                {
                    //Debug.Log("Is the p1 script");
                    UFE.p2ControlsScript.currentLifePoints += 10;
                }
                if(player == UFE.p2ControlsScript)
                {
                    //Debug.Log("Is p2 script");
                    UFE.p1ControlsScript.currentLifePoints += 10;
                }
                //player.currentLifePoints -= move.hits[0]._damageOnHit / 2;
            }
        }
        //throw new NotImplementedException();
    }

    private void OnMove(MoveInfo move, ControlsScript player)
    {
        //player refers to the person calling the move
        if(player!= null & move != null)
        {
            if(player == this.GetComponentInParent<ControlsScript>())
            {
                //Debug.Log(move.name + player.name);
                if(move.name == "Echo_Down_Special")
                {
                    CheckStance(player);
                    ChangeMats();
                }
                if(move.name == "Echo_DownHeavy" && player.currentLifePoints < 900)
                {
                    Debug.Log("HEAL MEEE");
                    player.currentLifePoints += 50;
                }

                if(move.name == "Echo_Down_Light")
                {
                    _hasShield = true;
                    StartCoroutine(ShieldDown());
                    //Debug.Log(_hasShield);
                }
                //Debug.Log(move.name);
            }
        } 
    }
    void ChangeMats()
    {
        SkinnedMeshRenderer renderer = bodyGrp.GetComponent<SkinnedMeshRenderer>();
        Material[] MeshMats = renderer.materials;
        CurrentMat++;
        if (CurrentMat > 2)
        {
            CurrentMat = 0;
        }
        MeshMats[1] = mats[CurrentMat];
        renderer.materials = MeshMats;
    }
    
    
    private void CheckStance(ControlsScript player)
    {
        UFE3D.CharacterInfo character = player.myInfo;
        if(player.currentCombatStance == CombatStances.Stance1)
        {
            //Once the stance changes from stance1 to stance2, lowers the move speed
            //player.myInfo.physics._moveBackSpeed = 5.5;
            //player.myInfo.physics._moveForwardSpeed = 6.5;
            character.physics._moveBackSpeed = 4.5;
            character.physics._moveForwardSpeed = 5.5;
            //Debug.Log(player.myInfo.physics._moveBackSpeed);
            //Debug.Log(player.myInfo.physics._moveForwardSpeed);
        }
        //Debug.Log("Switched Stances");
        if(player.currentCombatStance == CombatStances.Stance2)
        {
            if(character != null)
            {
                player.myInfo.physics._moveBackSpeed = 7;
                player.myInfo.physics._moveForwardSpeed = 8.5;
                //Debug.Log(player.myInfo.physics._moveBackSpeed);
                //Debug.Log(player.myInfo.physics._moveForwardSpeed);
            }
        }
        //need to do the same thing for the third combat stance
        if(player.currentCombatStance == CombatStances.Stance3)
        {
            player.myInfo.physics._moveBackSpeed = _originalMoveBackSpeed;
            player.myInfo.physics._moveForwardSpeed= _originalMoveForwardSpeed;
            //Debug.Log(player.myInfo.physics._moveBackSpeed);
            //Debug.Log(player.myInfo.physics._moveForwardSpeed);
        }

    }

    IEnumerator ShieldDown()
    {
        yield return new WaitForSeconds(5f);
        _hasShield = false;
        //Debug.Log(_hasShield);
    }
    
    
}
