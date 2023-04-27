using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using System.Collections.Generic;
using UFE3D;
using UnityEngine.Video;


public class DefaultMainMenuScreen : MainMenuScreen{
	#region public instance fields
	public AudioClip onLoadSound;
	public AudioClip music;
	public AudioClip selectSound;
	public AudioClip cancelSound;
	public AudioClip moveCursorSound;
	public bool stopPreviousSoundEffectsOnLoad = false;
	public float delayBeforePlayingMusic = 0.1f;

	public Button buttonNetwork;
	public Button buttonBluetooth;
	#endregion

	[SerializeField]VideoPlayer video;
	VideoInt vid;

    private void Awake()
    {
		video.loopPointReached += LoopPointReached;
    }


    private void LoopPointReached(VideoPlayer source)
    {
		//Find
        //throw new NotImplementedException();
		video.gameObject.SetActive(false);
		vid.SetamtToPlay();
    }

    #region public override methods
    public override void DoFixedUpdate(
		IDictionary<InputReferences, InputEvents> player1PreviousInputs,
		IDictionary<InputReferences, InputEvents> player1CurrentInputs,
		IDictionary<InputReferences, InputEvents> player2PreviousInputs,
		IDictionary<InputReferences, InputEvents> player2CurrentInputs
	){
		base.DoFixedUpdate(player1PreviousInputs, player1CurrentInputs, player2PreviousInputs, player2CurrentInputs);

		this.DefaultNavigationSystem(
			player1PreviousInputs,
			player1CurrentInputs,
			player2PreviousInputs,
			player2CurrentInputs,
			this.moveCursorSound,
			this.selectSound,
			this.cancelSound
			
		);
	}

	public void PVPBtnClicked()
	{
		UFE.StartPlayerVersusPlayer();
	}

    private void Start()
    {
		vid = FindObjectOfType<VideoInt>();
		if(vid.GetamtToPlay() == 0)
		{
			video.gameObject.SetActive(true);
			Debug.Log("Should play video");
			video.Play();
		}
    }

	public void QuitBtnClicked()
	{
		Application.Quit();
	}

    public override void OnShow (){
		base.OnShow ();
		this.HighlightOption(this.FindFirstSelectable());
		Debug.Log("On Show is called");
		if(video.isPlaying == false)
		{
            UFE.PlayMusic(this.music);
            /*if (this.music != null){			
                UFE.DelayLocalAction(delegate(){UFE.PlayMusic(this.music);}, this.delayBeforePlayingMusic);
            }*/

            if (this.stopPreviousSoundEffectsOnLoad)
            {
                UFE.StopSounds();
            }

            if (this.onLoadSound != null)
            {
                UFE.DelayLocalAction(delegate () { UFE.PlaySound(this.onLoadSound); }, this.delayBeforePlayingMusic);
            }

            if (buttonNetwork != null)
            {
                buttonNetwork.interactable = UFE.isNetworkAddonInstalled || UFE.isBluetoothAddonInstalled;
            }

            if (buttonBluetooth != null)
            {
                buttonBluetooth.interactable = UFE.isBluetoothAddonInstalled;
            }
        }
		
	}
	#endregion
}
