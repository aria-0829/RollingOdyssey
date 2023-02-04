using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PickupBehavior : MonoBehaviour
{
    GameManager gameManager;
  
    [SerializeField] private Vector3 Rotation;
    [SerializeField] private ParticleSystem PickupParticle;
    
    // Start is called before the first frame update
    void Start()
    {
        gameManager = GameManager.singleton;
    }
   
    // Update is called once per frame
    void Update()
    {
        transform.Rotate (Rotation * Time.deltaTime);
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            Instantiate(PickupParticle, transform.position, Quaternion.identity);
            gameObject.SetActive (false);

            gameManager.pickupCount += 1;
            gameManager.SetCountText ();
        }
    }
}
