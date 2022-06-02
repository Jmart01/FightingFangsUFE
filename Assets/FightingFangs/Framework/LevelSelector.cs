using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.SceneManagement;

public class LevelSelector : MonoBehaviour
{
    private WatkinsControls watkinsControls;

    void Awake()
    {
        watkinsControls = new WatkinsControls();
    }

    private void OnEnable()
    {
        watkinsControls.Enable();
    }

    private void OnDisable()
    {
        watkinsControls.Disable();
    }

    public void NightClub()
    {
        SceneManager.LoadScene(3, LoadSceneMode.Single);
    }

    public void China()
    {
        SceneManager.LoadScene(1, LoadSceneMode.Single);
    }

    public void Japan()
    {
        SceneManager.LoadScene(4, LoadSceneMode.Single);
    }

    public void Ethiopia()
    {
        SceneManager.LoadScene(2, LoadSceneMode.Single);
    }

    public void LoadStart()
    {
        SceneManager.LoadScene(0, LoadSceneMode.Single);
    }

    void Update()
    {
        if (watkinsControls.LevelLoads.StartLevel.triggered)
        {
            LoadStart();
        }

        if (watkinsControls.LevelLoads.EthiopiaLevel.triggered)
        {
            Ethiopia();
        }

        if (watkinsControls.LevelLoads.HongKongLevel.triggered)
        {
            China();
        }

        if (watkinsControls.LevelLoads.JapanLevel.triggered)
        {
            Japan();
        }

        if (watkinsControls.LevelLoads.NightClubLevel.triggered)
        {
            NightClub();
        }
    }

}
