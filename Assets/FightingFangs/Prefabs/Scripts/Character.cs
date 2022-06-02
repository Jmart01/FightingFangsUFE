using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Character : MonoBehaviour
{
    HealthComp healthComp;
    private int roundsWon = 0;
    // Start is called before the first frame update
    public int GetRoundsWon()
    {
        return roundsWon;
    }
    public virtual void Start()
    {
        healthComp = GetComponent<HealthComp>();

        healthComp.onHealthChanged += HealthChanged;
        healthComp.noHealthLeft += NoHealthLeft;
    }

    private void NoHealthLeft(GameObject killer)
    {
        //plays the death animation

        //this should also tell the Killer that it has won a round
        killer.GetComponent<Character>().IncreaseRoundsWon();
    }

    private void HealthChanged(float newValue, float oldValue, float MaxValue, GameObject Causer)
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void IncreaseRoundsWon()
    {
        roundsWon += 1;
    }
}
