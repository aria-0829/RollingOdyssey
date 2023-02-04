using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Teleporter : MonoBehaviour
{
    [SerializeField] private GameObject player;
    [SerializeField] private GameObject teleportPoint;
    [SerializeField] private GameObject[] teleportParticle;
 
    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            player.transform.position = teleportPoint.transform.position;

            foreach(GameObject objet in teleportParticle)
            {
                objet.SetActive (false);
            }
        }
    }
}
