using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FinishDetector : MonoBehaviour
{
    GameManager gameManager;
    
    [SerializeField] private GameObject finishPoint;
 
    void Start()
    {
        gameManager = GameManager.singleton;
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            gameManager.gameIsWin = true;
            gameManager.winText.text = "Congrats! You successfully completed the level. \n Time to get your prize coins!";
        }
    }
}
