using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LevelSelect : MonoBehaviour {

    public GameObject cabin;
    public bool flag = false;
    private Vector3 speed = new Vector3(0, 0.0001f, 0);
    public Transform target;



    public void LoadLevel1()
    {
        Application.LoadLevel(0);
    }
    public void LoadLevel2()
    {
        Application.LoadLevel(1);
    }
    public void LoadLevel3()
    {
        Application.LoadLevel(2);
    }
    public void LoadLevel4()
    {
        Application.LoadLevel(3);
    }
    public void GoUp()
    {
        flag = true;
    }

    void Update()
    {
        if (flag)
        {
            cabin.transform.position += Vector3.up * 0.001f;
            //StartCoroutine(Go());
        }
        
    }

    //IEnumerator Go()
    //{
    //    while (true)
    //    {
    //        if (cabin.transform.position.y > 7f) 
    //        {
    //            speed = new Vector3(0, 0.00005f, 0);
    //        }
    //        if (cabin.transform.position.y > 7.37f)
    //        {
    //            speed = new Vector3(0, 0, 0);
    //        }


    //        //cabin.transform.position += speed;
    //        cabin.GetComponent<Rigidbody>().MovePosition(speed); // + закешировать
    //        //yield return new WaitForSeconds(0.001f);

    //        if (cabin.transform.position.y > 7.37f)
    //        {
    //        //    yield break;
    //        //}
    //        //else
    //        //{
    //            yield return null;
    //        }
    //        yield return new WaitForSeconds(0.001f);
    //        //Debug.Log(cabin.transform.position.y);
    //    }

    //}

}
