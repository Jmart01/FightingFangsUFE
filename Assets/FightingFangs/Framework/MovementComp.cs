using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum DirectionFacing
{
    FacingLeft,
    FacingRight
}

public class MovementComp : MonoBehaviour
{

    [SerializeField] GameObject otherPlayer;
    // Start is called before the first frame update
    [Header("Motion")]
    [SerializeField] float WalkingSpeed;
    [SerializeField] float DashingSpeed;
    [SerializeField] float JumpHeight;
    [SerializeField] float EdgeTracingDistance = 0.5f;
    [SerializeField] float EdgeTracingDepth = 2f;
    [SerializeField] float SpeedMulti = 1f;
    [SerializeField] float GravMulti = 5f;
    [SerializeField] float JumpSpeed = 10f;
    [SerializeField] float JumpTime = 0.5f;

    DirectionFacing directionFacing;

    private float dist;
    //[SerializeField] float distanceAllowedBetweenPlayers = 10f;

    [Header("GroundChecks")]
    [SerializeField] LayerMask GroundLayer;
    [SerializeField] Transform GroundCheck;
    [SerializeField] float GroundCheckRadius = 0.1f;


    [Header("Private")]
    CharacterController characterController;
    Vector3 Velocity;
    Vector2 MoveInput;
    float Gravity = -9.8f; 
    bool CanJump = true;
    bool isJumping = false;

    void Start()
    {
        characterController = GetComponent<CharacterController>();
    }

    // Update is called once per frame
    void Update()
    {
        if(CanMove())
        {
            Debug.Log(CanMove());
            CalculateWalkingVelocity();
            characterController.Move(Velocity * Time.deltaTime);
        }
    }

    private bool IsFacingOtherPlayer()
    {
        Vector3 worldDirRight = Vector3.right;
        //use dot product to check which way the character is facing
        Vector3 forward = transform.TransformDirection(Vector3.forward);
        Vector3 toOther = otherPlayer.transform.position - transform.position;
        if(Vector3.Dot(forward, toOther) > 0)
        {
            Debug.Log("facing other player");
            return true;
        }
        Debug.Log("not facing other player");
        return false;
    }

    public void SetJumpInput()
    {
        PrepareJump();
    }

    internal void SetMovementInput(Vector2 input)
    {
        MoveInput = input;
    }

    public Vector3 GetPlayerDesiredMoveDir()
    {
        return InputAxisToWorldDir(MoveInput);
    }

    private Vector3 InputAxisToWorldDir(Vector2 input)
    {
        return new Vector3(input.x, 0f, 0f);
    }

    private void CalculateWalkingVelocity()
    {
        if(IsOnGround())
        {
            CanJump = true;
            Velocity.y = -0.2f;
        }

        Velocity = GetPlayerDesiredMoveDir() * WalkingSpeed * SpeedMulti;
        if(!IsOnGround() && !isJumping)
        {
            Velocity.y += Gravity/Time.deltaTime * Time.deltaTime;
        }
        //Debug.Log(Velocity.y);

        Vector3 PosXTracePosition = transform.position + new Vector3(EdgeTracingDistance, 0.5f, 0f);
        Vector3 NegXTracePosition = transform.position + new Vector3(-EdgeTracingDistance, 0.5f, 0f);

        bool CanGoPosX = Physics.Raycast(PosXTracePosition, Vector3.down, EdgeTracingDepth, GroundLayer);
        bool CanGoNegX = Physics.Raycast(NegXTracePosition, Vector3.down, EdgeTracingDepth, GroundLayer);

        float xMin = CanGoNegX ? float.MinValue : 0f;
        float xMax = CanGoPosX ? float.MaxValue : 0f;

        Velocity.x = Mathf.Clamp(Velocity.x, xMin, xMax);
    }

    bool IsOnGround()
    {
        return Physics.CheckSphere(GroundCheck.position, GroundCheckRadius, GroundLayer);
    }

    public void PrepareJump()
    {
        if (CanJump == true)
        {
            StartCoroutine(SetJumping());
            Debug.Log("Jumping and should move the cube");
            CanJump = false;
            Velocity.y += JumpSpeed * Time.deltaTime;
            characterController.Move(new Vector3(0f, Velocity.y * JumpHeight, 0f));
        }
    }

    IEnumerator SetJumping()
    {
        float timer = 0f;
        while(timer < JumpTime)
        {
            timer += Time.deltaTime;
            isJumping = true;
        }
        isJumping = false;
        yield return new WaitForEndOfFrame();
    }

    public bool CanMove()
    {
        if(gameObject.transform.forward == GetPlayerDesiredMoveDir())
        {
            return true;
        }
        float distanceAllowedFromOtherPlayer = 5f;
        float distance = Vector2.Distance(new Vector2(transform.position.x, 0f), new Vector2(otherPlayer.transform.position.x, 0f));
        if (distance >= distanceAllowedFromOtherPlayer)
        {
            Debug.Log(distance);
            return false;
        }
        return true;
        //this stops the player from moving even if they attempt moving towards the other player
        
    }
}
