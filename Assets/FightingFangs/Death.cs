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
    [SerializeField] MoveInfo deadMove;

    private void Awake()
    {
        UFE.OnLifePointsChange += this.OnLifePointsChange;
        UFE.OnHit += this.OnHit;
        UFE.OnRoundBegins += this.OnRoundBegins;
    }


    private void OnDisable()
    {
        UFE.OnLifePointsChange -= this.OnLifePointsChange;
        UFE.OnHit -= this.OnHit;
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
        //throw new NotImplementedException();
    }

    private void OnHit(HitBox strokeHitBox, MoveInfo move, ControlsScript player)
    {
        //need a different solution for when a move has multi hit on it
        for(int i = 0; i < move.hits.Length -1 ; i++)
        {
            ControlsScript Opponent = player.target;
            if (Opponent == this.GetComponentInParent<ControlsScript>() && Opponent.currentLifePoints - move.hits[i]._damageOnHit >= 0)
            {
                Debug.Log(player.target);
            }
            if (Opponent == this.GetComponentInParent<ControlsScript>() && Opponent.currentLifePoints - move.hits[i]._damageOnHit <= 0)
            {
                Debug.Log("Should play death anim");
                Opponent.GetComponentInChildren<Death>().PlayerModel.SetActive(false);
                DeathModel.SetActive(true);
                Animator animator = DeathModel.GetComponent<Animator>();
                
                animator.SetTrigger("Death");
                //player.target.CastMove(deadMove, false, true, false);
            }
        }
        for(int i =0;i < move.projectiles.Length; i++)
        {
            for(int j = 0; i < move.projectiles[i].totalHits; j++)
            {
                if (player.target.currentLifePoints - move.projectiles[i]._damageOnHit >= 0)
                {
                    Debug.Log(player.target);
                }
                if (player.target.currentLifePoints - move.projectiles[i]._damageOnHit <= 0)
                {
                    Debug.Log("Should Play death anim");
                }
            }
            
        }
        //throw new NotImplementedException();
    }

    /*public MoveInfo GetDeathMove()
    {
        return deadMove;
    }*/

    private void OnLifePointsChange(float newFloat, ControlsScript player)
    {
        /*if (player != null)
        {
            player.target.CastMove(player.target.GetComponentInChildren<Death>().GetDeathMove(), true, true, false);
            if (player.target.currentLifePoints == 0)
            {
                
                StartCoroutine(SetDeadToFalse(player.target));
                
                //player.target.isDead = false;

            }
            
        }
        else
        {
            Debug.Log("NOT A REAL PERSON");
        }*/
        //throw new NotImplementedException();
    }
    /*IEnumerator SetDeadToFalse(ControlsScript target)
    {
        Debug.Log(target.isDead);
        target.isDead = false;
        Debug.Log(target.isDead);
        if(!target.isDead)
        {
            target.CastMove(target.GetComponentInChildren<Death>().GetDeathMove(), true, true, false);
            Debug.Log("Moves past the cast move");
        }
        yield return new WaitForSeconds(1f);
        target.isDead = false;
        Debug.Log(target.isDead);
    }

    // Start is called before the first frame update
    void Start()
    {
        
    }

    

    // Update is called once per frame
    void Update()
    {
        
    }*/
}
