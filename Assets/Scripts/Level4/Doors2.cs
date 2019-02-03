using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Doors2 : MonoBehaviour {

    public GameObject leftDoor;
    public GameObject point;
    private bool opening;
    private bool closing;
    private bool opened;
    private bool closed;
    private bool openDoors;
    private bool closeDoors;

    float m_distanceTraveledOpening;
    float m_distanceTraveledClosing;

    // Use this for initialization
    void Start () {
        opening = false;
        closing = false;
        closed = true;
        opened = false;
        m_distanceTraveledOpening = 0;
        m_distanceTraveledClosing = 0;
        openDoors = false;
        closeDoors = false;
    }

    // Update is called once per frame

    public void OpenDoors()
    {
        openDoors = true;
    }

    public void CloseDoors()
    {
        closeDoors = true;
    }


    void Update () {
        if ((Input.GetKey(KeyCode.A) || (openDoors)) && closed)
        {
            opening = true;
            opened = false;
            closed = false;
            openDoors = false;
        }
        if ((Input.GetKey(KeyCode.S) || (closeDoors))&& opened)
        {
            closing = true;
            opened = false;
            closed = false;
            closeDoors = false;
        }

        
        if (leftDoor.transform.localRotation.z > -0.5 && opening)
        {
            leftDoor.transform.RotateAround(point.transform.position, Vector3.down, 90 * Time.deltaTime);
            Debug.Log(leftDoor.transform.localRotation.z);
        }
        if (leftDoor.transform.localRotation.z < 0 && closing)
        {
            leftDoor.transform.RotateAround(point.transform.position, Vector3.up, 90 * Time.deltaTime);
            Debug.Log(leftDoor.transform.localRotation.z);
        }
        if (leftDoor.transform.localRotation.z <= -0.5 && opening)
        {
            opening = false;
            opened = true;
            closed = false;
            //m_distanceTraveledClosing = 1;
        }
        if (leftDoor.transform.localRotation.z >= 0 && closing)
        {
            closing = false;
            opened = false;
            closed = true;
            //m_distanceTraveledOpening = 0;
        }
        if (closed)
            m_distanceTraveledOpening = 0;
        if (opened)
            m_distanceTraveledClosing = 0;
    }
}
