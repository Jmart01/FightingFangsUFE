using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class swordRelocate : MonoBehaviour
{
    [SerializeField] Transform swordTrans;
    [SerializeField] Transform wristTrans;
    // Start is called before the first frame update
    void Start()
    {
        swordTrans.parent = wristTrans;
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
