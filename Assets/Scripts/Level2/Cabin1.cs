using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Cabin1 : MonoBehaviour
{

    public GameObject cabin;
    private bool opening;
    private bool closing;
    private bool opened;
    private bool closed;

    private bool goUp;
    private bool goDown;

    float m_distanceTraveledOpening;
    float m_distanceTraveledClosing;

    // Use this for initialization
    void Start()
    {
        opening = false;
        closing = false;
        closed = true;
        opened = false;
        m_distanceTraveledOpening = 0;
        m_distanceTraveledClosing = 0;
        goUp = false;
        goDown = false;
    }

    // Update is called once per frame

    public void GoUp()
    {
        goUp = true;
    }
    public void GoDown()
    {
        goDown = true;
    }

    void Update()
    {
        if ((Input.GetKey(KeyCode.Q) || (goUp)) && closed)
        {
            opening = true;
            opened = false;
            closed = false;
            goUp = false;
        }
        if ((Input.GetKey(KeyCode.W) || (goDown)) && opened)
        {
            closing = true;
            opened = false;
            closed = false;
            goDown = false;
        }
        if (m_distanceTraveledOpening < 6.6 && opening)
        {
            Vector3 oldPosition = cabin.transform.position;
            cabin.transform.Translate( 0, 1f * Time.deltaTime, 0);
            m_distanceTraveledOpening += Vector3.Distance(oldPosition, cabin.transform.position);
            Debug.Log(m_distanceTraveledOpening);

        }
        if (m_distanceTraveledClosing < 6.6 && closing)
        {
            Vector3 oldPosition1 = cabin.transform.position;
            cabin.transform.Translate( 0,-1f * Time.deltaTime, 0);
            m_distanceTraveledClosing += Vector3.Distance(cabin.transform.position, oldPosition1);
            Debug.Log(m_distanceTraveledClosing);
        }
        if (m_distanceTraveledOpening >= 6.6 && opening)
        {
            opening = false;
            opened = true;
            closed = false;
            //m_distanceTraveledClosing = 1;
        }
        if (m_distanceTraveledClosing >= 6.6 && closing)
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

    //void Start()
    //{
    //    movingUp = false;
    //    movingDown = false;
    //    bottom = true;
    //    top = false;
    //    m_distanceTraveledUp = 0;
    //    m_distanceTraveledDown = 0;
    //}

    //// Update is called once per frame
    //void Update()
    //{
    //    if (Input.GetKey(KeyCode.Q) && bottom)
    //    {
    //        movingUp = true;
    //        bottom = false;
    //        top = false;
    //    }
    //    if (Input.GetKey(KeyCode.W) && top)
    //    {
    //        movingDown = true;
    //        bottom = false;
    //        top = false;
    //    }
    //    if (m_distanceTraveledUp < 1 && movingUp)
    //    {
    //        Vector3 oldPosition = cabin.transform.position;
    //        cabin.transform.Translate(0, 0.5f * Time.deltaTime, 0);
    //        m_distanceTraveledDown += Vector3.Distance(oldPosition, cabin.transform.position);
    //    }
    //    if (m_distanceTraveledDown < 1 && movingDown)
    //    {
    //        Vector3 oldPosition1 = cabin.transform.position;
    //        cabin.transform.Translate(0, -0.5f * Time.deltaTime, 0);
    //        m_distanceTraveledDown += Vector3.Distance(cabin.transform.position, oldPosition1);
    //    }
    //    if (m_distanceTraveledUp >= 1 && movingUp)
    //    {
    //        movingUp = false;
    //        top = true;
    //        bottom = false;
    //        //m_distanceTraveledClosing = 1;
    //    }
    //    if (m_distanceTraveledDown >= 1 && movingDown)
    //    {
    //        movingDown = false;
    //        top = false;
    //        bottom = true;
    //        //m_distanceTraveledOpening = 0;
    //    }
    //    if (bottom)
    //        m_distanceTraveledUp = 0;
    //    if (top)
    //        m_distanceTraveledDown = 0;
    //}
}
