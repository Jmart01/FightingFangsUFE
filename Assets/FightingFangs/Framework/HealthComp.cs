using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public delegate void OnhealthChanged(float newValue, float oldValue, float MaxValue, GameObject Causer);
public delegate void OnNoHealthLeft(GameObject killer);
public class HealthComp : MonoBehaviour
{

    [SerializeField] float HitPoints = 2000f;
    [SerializeField] float MaxHitPoints = 2000f;

    public OnhealthChanged onHealthChanged;
    public OnNoHealthLeft noHealthLeft;
    // Start is called before the first frame update


    public void ChangeHealth(float changeAmount, GameObject Causer = null)
    {
        if (changeAmount < 0 && HitPoints == 0)
        {
            return;
        }
        float oldValue = HitPoints;
        HitPoints += changeAmount;
        HitPoints = Mathf.Clamp(HitPoints, 0f, MaxHitPoints);
        if (HitPoints == 0)
        {
            if (noHealthLeft != null)
            {
                noHealthLeft.Invoke(Causer);
            }
        }
        if (onHealthChanged != null)
        {
            onHealthChanged.Invoke(HitPoints, oldValue, MaxHitPoints, Causer);
        }
    }


    public void BroadCastCurrentHealth()
    {
        onHealthChanged.Invoke(HitPoints, HitPoints, MaxHitPoints, gameObject);
    }
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
