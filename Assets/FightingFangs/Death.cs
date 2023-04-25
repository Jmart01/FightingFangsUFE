using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UFE3D;
using System;


public class Death : MonoBehaviour
{
    private ControlsScript playerControls;
    //private Animator playerAnimator;
    private Animator opponentAnimator;
    [SerializeField] GameObject DeathModel;
    [SerializeField] GameObject PlayerModel;

    private Death Opponentdeath;
    //gameObject.GetComponentInParent<ControlsScript>().target.GetComponentInChildren<Death>();

    private void Awake()
    {
        UFE.OnLifePointsChange += this.OnLifePointsChange;
        UFE.OnRoundBegins += this.OnRoundBegins;
        //UFE.OnHit += this.OnHit;
    }


    private void OnDisable()
    {
        UFE.OnLifePointsChange -= this.OnLifePointsChange;  
        UFE.OnRoundBegins -= this.OnRoundBegins;
    }

    private void Start()
    {
        Opponentdeath = gameObject.GetComponentInParent<ControlsScript>().target.GetComponentInChildren<Death>();
        playerControls = this.GetComponentInParent<ControlsScript>();
        opponentAnimator = Opponentdeath.DeathModel.GetComponent<Animator>();
    }

    /*private void OnHit(HitBox strokeHitBox, MoveInfo move, ControlsScript player)
    {
        if (move.hits[0].hitType == HitType.Sweep)
        {
            //put logic for the sweeping stand up animations here
            
        }
        //throw new NotImplementedException();
    }

    IEnumerator PlayStandUp(ControlsScript player)
    {


        yield return new WaitForEndOfFrame();
    }*/

    void PlayStandUp()
    {
        Debug.Log("Should now play stand up anim");
        if(playerControls.currentLifePoints > 0)
        {
            Debug.Log("Health is greater than 0");
            PlayerModel.SetActive(false);
            DeathModel.SetActive(true);
            //CheckActive(PlayerModel, DeathModel);
            DeathModel.GetComponent<Animator>().SetTrigger("Swept");
        }
    }

    public void TurnOnPlayerModel()
    {
        PlayerModel.SetActive(true);
        DeathModel.SetActive(false);
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
        
        if (newFloat <= 0)
        {
            //Death Opponentdeath = player.target.GetComponentInChildren<Death>();
            if(Opponentdeath != player.GetComponentInChildren<Death>())
            {
                Opponentdeath.PlayerModel.SetActive(false);
                Opponentdeath.DeathModel.SetActive(true);
                //Animator animator = Opponentdeath.DeathModel.GetComponent<Animator>();
                opponentAnimator.SetTrigger("Death");
            }
            
            //player.target.CastMove(deadMove, false, true, false);
        }
    }
}
