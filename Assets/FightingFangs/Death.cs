using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UFE3D;
using System;


public class Death : MonoBehaviour
{
    private ControlsScript playerControls;
    [SerializeField] GameObject DeathModel;
    [SerializeField] MoveInfo deadMove;

    private void Awake()
    {
        UFE.OnLifePointsChange += this.OnLifePointsChange;
        UFE.OnHit += this.OnHit;
    }

    private void OnDisable()
    {
        UFE.OnLifePointsChange -= this.OnLifePointsChange;
        UFE.OnHit -= this.OnHit;
    }

    private void OnHit(HitBox strokeHitBox, MoveInfo move, ControlsScript player)
    {
        //need a different solution for when a move has multi hit on it
        /*if(player.target == this.GetComponentInParent<ControlsScript>() && player.target.currentLifePoints - move.hits[0]._damageOnHit >= 0 || player.target.currentLifePoints - move.projectiles[0]._damageOnHit >= 0)
        {
            Debug.Log(player.target);
        }
        if(player.target == this.GetComponentInParent<ControlsScript>() && player.target.currentLifePoints - move.hits[0]._damageOnHit <= 0 || player.target.currentLifePoints - move.projectiles[0]._damageOnHit <= 0)
        {
            Debug.Log("Should play death anim");
            player.target.character.SetActive(false);
            DeathModel.SetActive(true);
            Animator animator = DeathModel.GetComponent<Animator>();
            animator.SetBool("Dead", true);
            //player.target.CastMove(deadMove, false, true, false);
        }*/

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
