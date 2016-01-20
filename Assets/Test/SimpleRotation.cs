using UnityEngine;

public class SimpleRotation : MonoBehaviour
{
    [SerializeField] float _spinSpeed = 10;
    [SerializeField] float _pitchSpeed = 1;
    [SerializeField] float _pitchAmount = 10;

    void Update()
    {
        var rx = Mathf.Sin(Time.time * _pitchSpeed) * _pitchAmount;
        transform.localRotation =
            Quaternion.Euler(rx, _spinSpeed * Time.time, 0);
    }
}
