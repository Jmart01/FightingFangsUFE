using UnityEngine;

public class ClubLights : MonoBehaviour
{
    public float xAngle, yAngle, zAngle;
    public float speed;

    private float xRot, yRot, zRot;

    private void Start()
    {
        xRot = transform.eulerAngles.x;
        yRot = transform.eulerAngles.y; 
        zRot = transform.eulerAngles.z;
    }
    void Update()
    {
        gameObject.transform.Rotate(xAngle * speed * Time.deltaTime, yAngle* speed * Time.deltaTime, zAngle * speed * Time.deltaTime, Space.World);
        
    }
}