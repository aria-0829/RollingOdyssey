using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraController : MonoBehaviour
{
    GameManager gameManager;
    
    [SerializeField] private GameObject player;
    private Vector3 offset;
    private Vector3 rotate;
    private float rotateX;
    private float rotateY;
    private float rotateSpeed;
    private float xRotation;

    // Start is called before the first frame update
    void Start()
    {
        gameManager = GameManager.singleton;
        offset = transform.position - player.transform.position;
    }

    //LateUpdate runs every frame after all items have been processed in Update, it's best for follow cameras, procedural animation and gathering last known states
    void LateUpdate()
    {
        transform.position = player.transform.position + offset;
        //Rotate camera by moving mouse
        rotateX += Input.GetAxis("Mouse X") * rotateSpeed;
        rotateY  = Input.GetAxis("Mouse Y") * rotateSpeed;
        xRotation -= rotateY;
        xRotation = Mathf.Clamp(xRotation, -30f, 30f);
        transform.localRotation = Quaternion.Euler(xRotation, rotateX, 0);

        if(gameManager.gameIsPaused == true)
        {
            Cursor.lockState = CursorLockMode.None;
            Cursor.visible = true;
            rotateSpeed = 0;
        }
        else
        {
            Cursor.lockState = CursorLockMode.Locked;
            Cursor.visible = false;
            rotateSpeed = 1;
        }
    }
}
