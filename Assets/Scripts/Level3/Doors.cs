using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Doors : MonoBehaviour {

    public GameObject leftDoor;
    public GameObject rightDoor;
    public GameObject leftDoorT;
    public GameObject rightDoorT;
    public GameObject leftDoor2;
    public GameObject rightDoor2;
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
        if (m_distanceTraveledOpening < 1 && opening)
        {
            Vector3 oldPosition = leftDoor.transform.position;
            leftDoor.transform.Translate(0.5f * Time.deltaTime, 0, 0);
            leftDoorT.transform.Translate(0.5f * Time.deltaTime, 0, 0);
            leftDoor2.transform.Translate(0.5f * Time.deltaTime, 0, 0);
            rightDoor.transform.Translate(-0.5f * Time.deltaTime, 0, 0);
            rightDoorT.transform.Translate(-0.5f * Time.deltaTime, 0, 0);
            rightDoor2.transform.Translate(-0.5f * Time.deltaTime, 0, 0);
            m_distanceTraveledOpening += Vector3.Distance(oldPosition, leftDoor.transform.position);
            Debug.Log(m_distanceTraveledOpening);

        }
        if (m_distanceTraveledClosing < 1 && closing)
        {
            Vector3 oldPosition1 = leftDoor.transform.position;
            leftDoor.transform.Translate(-0.5f * Time.deltaTime, 0, 0);
            leftDoorT.transform.Translate(-0.5f * Time.deltaTime, 0, 0);
            leftDoor2.transform.Translate(-0.5f * Time.deltaTime, 0, 0);
            rightDoor.transform.Translate(0.5f * Time.deltaTime, 0, 0);
            rightDoorT.transform.Translate(0.5f * Time.deltaTime, 0, 0);
            rightDoor2.transform.Translate(0.5f * Time.deltaTime, 0, 0);
            m_distanceTraveledClosing += Vector3.Distance(leftDoor.transform.position, oldPosition1);
            Debug.Log(m_distanceTraveledClosing);
        }
        if (m_distanceTraveledOpening >= 1 && opening)
        {
            opening = false;
            opened = true;
            closed = false;
            //m_distanceTraveledClosing = 1;
        }
        if (m_distanceTraveledClosing >= 1 && closing)
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
