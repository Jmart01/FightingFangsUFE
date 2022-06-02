using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.SceneManagement;

public class Player : Character
{

    PlayerInputAction inputActions;
    MovementComp movementComp;
    Animator animator;
    Coroutine BackToIdleCoroutine;

    private void Awake()
    {
        inputActions = new PlayerInputAction();
    }

    private void OnEnable()
    {
        inputActions.Enable();
    }

    private void OnDisable()
    {
        inputActions.Disable();
    }

    public void DisableInputs()
    {
        OnDisable();
    }
    public override void Start()
    {
        base.Start();
        //need in game ui
        movementComp = GetComponent<MovementComp>();
        animator = GetComponent<Animator>();

        inputActions.Gameplay.Move.performed += MoveInputUpdated;
        inputActions.Gameplay.Move.canceled += MoveInputUpdated;
        inputActions.Gameplay.Jump.performed += JumpInput;
        //used only for testing right now
        inputActions.Gameplay.NextLevel.performed += NextLevel;
    }

    private void NextLevel(InputAction.CallbackContext obj)
    {
        
        int CurrentLevelIndex = SceneManager.GetActiveScene().buildIndex;
        Debug.Log(CurrentLevelIndex);
        if(CurrentLevelIndex < SceneManager.sceneCountInBuildSettings -1)
        {
            SceneManager.LoadScene(CurrentLevelIndex + 1);
        }
        if(CurrentLevelIndex == SceneManager.sceneCountInBuildSettings -1)
        {
            SceneManager.LoadScene(0);
        }
    }

    private void JumpInput(InputAction.CallbackContext obj)
    {
        movementComp.PrepareJump();
    }

    private void MoveInputUpdated(InputAction.CallbackContext obj)
    {
        //go to movementcomp and update the inputs
        Vector2 input = obj.ReadValue<Vector2>().normalized;
        //Debug.Log(input);
        UpdateMovement(input);
    }

    private void UpdateMovement(Vector2 input)
    {
        movementComp.SetMovementInput(input);
        if(input.magnitude == 0)
        {
            Debug.Log("BackToIdle");
            //BackToIdleCoroutine = StartCoroutine(DelayedBackToIdle());
        }
        else
        {
            /*
            if(BackToIdleCoroutine != null)
            {
                StopCoroutine(BackToIdleCoroutine);
                BackToIdleCoroutine = null;
            }*/
        }
    }



    IEnumerator DelayedBackToIdle()
    {
        yield return new WaitForSeconds(0.1f);
        animator.SetTrigger("BackToIdle");
    }

    // Start is called before the first frame update


    // Update is called once per frame
    void Update()
    {
        UpdateAnimation();
    }

    private void UpdateAnimation()
    {
        //animator.SetFloat();
        Vector2 PlayerDir = movementComp.GetPlayerDesiredMoveDir();
        //float 
    }
}
