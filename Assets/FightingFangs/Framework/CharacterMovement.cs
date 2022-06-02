using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;

public class CharacterMovement : MonoBehaviour
{
    private WatkinsControls watkinsControls;
    public GameObject characterLeft;
    Animator characterLeft_Animator;

    [SerializeField] Transform limitLeft;
    [SerializeField] Transform limitRight;

    public float speedToMove;

    // Start is called before the first frame update
    void Awake()
    {
        characterLeft_Animator = characterLeft.GetComponent<Animator>();
        watkinsControls = new WatkinsControls();
        characterLeft_Animator.SetFloat("LateralMovement", 0f);
    }

    private void OnEnable()
    {
        watkinsControls.Enable();
    }

    private void OnDisable()
    {
        watkinsControls.Disable();
    }

    // Update is called once per frame
    void Update()
    {  
        float move = watkinsControls.L_Player.Movement.ReadValue<float>();
        characterLeft_Animator.SetFloat("LateralMovement", move);

        characterLeft.transform.Translate(move * Vector3.forward * speedToMove * Time.deltaTime);
        if (characterLeft.transform.position.x < limitLeft.position.x)
        {
            characterLeft.transform.position = new Vector3(limitLeft.position.x, characterLeft.transform.position.y, characterLeft.transform.position.z);
        }
        if (characterLeft.transform.position.x > limitRight.position.x)
        {
            characterLeft.transform.position = new Vector3(limitRight.position.x, characterLeft.transform.position.y, characterLeft.transform.position.z);
        }


        if (watkinsControls.L_Player.Kick.triggered)
        {
            characterLeft_Animator.SetTrigger("Kick");
        }
    }
}
