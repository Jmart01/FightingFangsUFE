using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class NavigateDialogue : MonoBehaviour
{
    [SerializeField] GameObject[] panels;
    private int panelIndex = 0;


    // Start is called before the first frame update
    void Start()
    {
        panels[panelIndex].SetActive(true);
    }

    // Update is called once per frame
    void Update()
    {
        if(Input.GetButtonDown("Submit") && panelIndex < panels.Length)
        {
            panels[panelIndex].SetActive(false);
            panelIndex++;
            if(panelIndex < panels.Length)
            {
                panels[panelIndex].SetActive(true);
            }
        }
    }
}
