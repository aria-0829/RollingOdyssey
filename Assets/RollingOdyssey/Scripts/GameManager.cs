using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class GameManager : SingletonMonoBehaviour<GameManager>
{
    public Text tipText;
    public Text winText;
    [HideInInspector] public int pickupCount;
    [HideInInspector] public bool gameIsPaused;
    [HideInInspector] public bool gameIsWin;

    private GameObject[] pickups;
    private int pickupsTotal;
    [SerializeField] Text countText;
    [SerializeField] private GameObject gameStartUI;
    [SerializeField] private GameObject gamePauseUI;
    [SerializeField] private GameObject droppedUI;
    
    // Start is called before the first frame update
    void Start()
    {
        tipText.text = "";
        winText.text = "";
        pickupCount = 0;
        gameIsPaused = true;
        gameIsWin = false;
        Time.timeScale = 0f;
        pickups = GameObject.FindGameObjectsWithTag("Pickup");
        pickupsTotal = pickups.Length;
        SetCountText ();
    }

    void Update()
    {
        if(Input.GetKeyDown(KeyCode.Escape) && gameIsPaused == false)
        {
            PauseGame();
        }

        if (pickupCount == pickupsTotal)
        {
            tipText.text = "Well done!!! You have all the coins!!!";
        }
    }

    public void SetCountText()
    {
        countText.text = "You have: " + pickupCount.ToString () + " coins!";
    }

    public void OnGroundTip()
    {
        if (pickupCount >= 1)
            {
                tipText.text = "There is always a way back...";
            }
        else
            {
                tipText.text = "";
            }
    }

    public void PauseGame()
    {
        gameIsPaused = true;
        gamePauseUI.SetActive(true);
        Time.timeScale = 0f;
    }

    public void ResumeGame()
    {
        gameStartUI.SetActive(false);
        gameIsPaused = false;
        gamePauseUI.SetActive(false);
        Time.timeScale = 1f;
    }

    public void Dropped()
    {
        gameIsPaused = true;
        droppedUI.SetActive(true);
        Time.timeScale = 0f;
    }

    public void RestartGame()
    {
        Time.timeScale = 1f;
        SceneManager.LoadScene(SceneManager.GetActiveScene().name);
    }

    public void QuitGame()
    {
        #if UNITY_EDITOR
        UnityEditor.EditorApplication.isPlaying = false;
        #else
        Application.Quit();
        #endif
    }
}
