using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour
{ 
    GameManager gameManager;
    
    [SerializeField] private float speed;

    private Rigidbody rb;
    private GameObject focalPoint;
    private Vector3 moveDir;
    
    // Start is called before the first frame update
    void Start()
    {
        rb = GetComponent<Rigidbody>();
        focalPoint = GameObject.Find("FocalPoint");
        gameManager = GameManager.singleton;
    }

    //FixedUpdate is called before performing any physics calculations
    void FixedUpdate()
    {
        float moveVertical = Input.GetAxis ("Vertical");
        float moveHorizontal = Input.GetAxis ("Horizontal");
        moveDir = (focalPoint.transform.forward * moveVertical) + (focalPoint.transform.right * moveHorizontal);
        rb.AddForce (moveDir.normalized * speed);

        if(gameObject.transform.position.y < 0)
        {
            gameManager.Dropped();
        }
    }

    void OnCollisionStay(Collision collision) 
    {
        if (collision.gameObject.CompareTag ("Ground") && gameManager.gameIsWin == false)
        {
            gameManager.OnGroundTip ();
        }
        else
        {
            gameManager.tipText.text = "";
        }   
    }
}
