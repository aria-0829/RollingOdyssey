using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SingletonMonoBehaviour<T> : MonoBehaviour where T : MonoBehaviour
{
    protected static T Singleton;
    public static T singleton => Singleton;

    protected virtual void Awake()
    {
        if (Singleton != null)
        {
            Destroy(this);
            return;
        }

        Singleton = this as T;
    }

    protected virtual void OnDestroy()
    {
        if (Singleton == this as T)
        {
            Singleton = null;
        }
    }
}