using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UFE3D;
using System;


public class Death : MonoBehaviour
{
    private ControlsScript playerControls;
    [SerializeField] GameObject DeathModel;
    [SerializeField] GameObject PlayerModel;

    private void Awake()
    {
        UFE.OnLifePointsChange += this.OnLifePointsChange;
        UFE.OnRoundBegins += this.OnRoundBegins;
    }


    private void OnDisable()
    {
        UFE.OnLifePointsChange -= this.OnLifePointsChange;  
        UFE.OnRoundBegins -= this.OnRoundBegins;
    }

    private void OnRoundBegins(int newInt)
    {
        if(DeathModel.activeInHierarchy == true)
        {
            DeathModel.SetActive(false);
            PlayerModel.SetActive(true);
        }
        else
        {
            return;
        }  
    }

    private void OnLifePointsChange(float newFloat, ControlsScript player)
    {
        Debug.Log(player.name);
        if (newFloat <= 0)
        {
            Death Opponentdeath = player.target.GetComponentInChildren<Death>();
            Debug.Log("Should play death anim");
            Opponentdeath.PlayerModel.SetActive(false);
            Opponentdeath.DeathModel.SetActive(true);
            Animator animator = Opponentdeath.DeathModel.GetComponent<Animator>();

            animator.SetTrigger("Death");
            //player.target.CastMove(deadMove, false, true, false);
        }
    }
}
