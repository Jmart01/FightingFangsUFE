using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimSkip : MonoBehaviour
{
    Animator currentAnimator;
    AnimatorStateInfo animatorClips;
    public SkinnedMeshRenderer[] skinnedMeshRenders;

    private void Start()
    {
        currentAnimator = GetComponent<Animator>();    
    }
    public void AnimationSkip()
    {
        Debug.Log("This Works!");
        //animatorClips = currentAnimator.GetCurrentAnimatorStateInfo(0);
        //animatorClips.normalizedTime = 
        skinnedMeshRenders = GetComponentsInChildren<SkinnedMeshRenderer>();
        foreach(SkinnedMeshRenderer renders in skinnedMeshRenders)
        {
            renders.enabled = false;
        }
    }
}
