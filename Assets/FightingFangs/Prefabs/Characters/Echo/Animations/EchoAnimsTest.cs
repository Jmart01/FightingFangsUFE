using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EchoAnimsTest : MonoBehaviour
{
    private Animator mAnimator;
    private Animation anim;

    void Start()
    {
        mAnimator = GetComponent<Animator>();
        
    }

    // Update is called once per frame
    void Update()
    {
        /*if(anim.GetClipCount() > 1)
        {

        }*/

        if (Input.GetKeyDown(KeyCode.Alpha1))
        {
            mAnimator.SetTrigger("downHeavy");
        }
        if (Input.GetKeyDown(KeyCode.Alpha2))
        {
            mAnimator.SetTrigger("downLight");
        }
        if (Input.GetKeyDown(KeyCode.Alpha3))
        {
            mAnimator.SetTrigger("downspecial");
        }
        if(Input.GetKeyDown(KeyCode.Alpha4))
        {
            mAnimator.SetTrigger("NeutralHeavy");
        }
        if(Input.GetKeyDown(KeyCode.Alpha5))
        {
            mAnimator.SetTrigger("Neutrallight");
        }
        if(Input.GetKeyDown(KeyCode.Alpha6))
        {
            mAnimator.SetTrigger("neutralspecial");
        }

    }
}
