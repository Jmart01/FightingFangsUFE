using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UFE3D;


public class Death : MonoBehaviour
{
    private ControlsScript player1Controls;
    private ControlsScript player2Controls;
    // Start is called before the first frame update
    void Start()
    {
        player1Controls = UFE.GetPlayer1ControlsScript();
        player2Controls = UFE.GetPlayer2ControlsScript();
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
