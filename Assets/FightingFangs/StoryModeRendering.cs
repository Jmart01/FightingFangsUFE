using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UFE3D;

public class StoryModeRendering : MonoBehaviour
{
    public GameObject p1Prefab;
    public GameObject cpuPrefab;
    public GameObject stage;
    [SerializeField] Transform StageTransform;
    [SerializeField] Transform p1Transform;
    [SerializeField] Transform cpuTransform;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void GetPlayerInfo(UFE3D.CharacterInfo p1, UFE3D.CharacterInfo cpu)
    {
        p1Prefab = Instantiate(p1.characterPrefab);
        cpuPrefab = cpu.characterPrefab;
        stage = Instantiate(UFE.GetStage().prefab, StageTransform);
    }
}
