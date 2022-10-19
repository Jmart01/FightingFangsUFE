using UnityEngine;

public class ClubLights : MonoBehaviour
{
    public float xAngle, yAngle, zAngle;
    public float speed;


    void Update()
    {
        gameObject.transform.Rotate(xAngle * speed * Time.deltaTime, yAngle* speed * Time.deltaTime, zAngle * speed * Time.deltaTime, Space.World);
        //cube2.transform.Rotate(xAngle, yAngle, zAngle, Space.World);
    }
}