using System.Collections;
using System.Collections.Generic;
using UnityEditor.Animations;
using UnityEngine;

public class TestingAnimator : MonoBehaviour
{
    [SerializeField] AnimatorController swordAnimator;
    AnimatorControllerParameter motion;
    // Start is called before the first frame update
    void Start()
    {
        motion = swordAnimator.parameters[0];
    }

    // Update is called once per frame
    void Update()
    {
        if(Input.GetKey(KeyCode.A))
        {
            motion.defaultInt = -1;
        }
        if(Input.GetKey(KeyCode.D))
        {
            motion.defaultInt = 1;
        }
        else if(Input.GetKey(KeyCode.None))
        {
            motion.defaultInt = 0;
        }
    }
}
