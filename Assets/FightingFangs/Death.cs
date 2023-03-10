using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UFE3D;
using System;


public class Death : MonoBehaviour
{
    private ControlsScript playerControls;
    [SerializeField] MoveInfo deadMove;

    private void Awake()
    {
        UFE.OnLifePointsChange += this.OnLifePointsChange;
    }
    public MoveInfo GetDeathMove()
    {
        return deadMove;
    }

    private void OnLifePointsChange(float newFloat, ControlsScript player)
    {
        if (player != null)
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
        }
        //throw new NotImplementedException();
    }
    IEnumerator SetDeadToFalse(ControlsScript target)
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
        
    }
}
