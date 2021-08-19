# minikube-pythonweb


root@ip-172-31-30-240:/workspace/flask# kubectl get pods
NAME            READY   STATUS    RESTARTS   AGE
pythonweb-pod   1/1     Running   1          23h
root@ip-172-31-30-240:/workspace/flask# kubectl get svc
NAME          TYPE           CLUSTER-IP      EXTERNAL-IP     PORT(S)          AGE
kubernetes    ClusterIP      10.96.0.1       <none>          443/TCP          2d4h
my-service    NodePort       10.98.41.194    <none>          8080:32132/TCP   23h
pytonweb-lb   LoadBalancer   10.105.22.245   10.105.22.245   8080:30684/TCP   22h
root@ip-172-31-30-240:/workspace/flask# kubectl get ingress
NAME                 CLASS    HOSTS                         ADDRESS         PORTS   AGE
python-web-ingress   <none>   hello-world-python-web.info   172.31.30.240   80      18m
root@ip-172-31-30-240:/workspace/flask# kubectl describe pod/pythonweb-pod
Name:         pythonweb-pod
Namespace:    default
Priority:     0
Node:         ip-172-31-30-240/172.31.30.240
Start Time:   Wed, 18 Aug 2021 22:01:39 +0000
Labels:       app=pythonweb
Annotations:  <none>
Status:       Running
IP:           172.17.0.2
IPs:
  IP:  172.17.0.2
Containers:
  pythonweb-container:
    Container ID:   docker://b1d9062709ff4b729ab450d3fdd7ce84cf9dd4fe12a57f1b9b3bf9d2d1e536c6
    Image:          python/flask-web:v1
    Image ID:       docker://sha256:d789647c9ddb7d61b652c24b05fbeefa1d42ba4b07d8094528de9ff166012521
    Port:           8080/TCP
    Host Port:      0/TCP
    State:          Running
      Started:      Thu, 19 Aug 2021 21:15:18 +0000
    Last State:     Terminated
      Reason:       Completed
      Exit Code:    0
      Started:      Wed, 18 Aug 2021 22:01:40 +0000
      Finished:     Wed, 18 Aug 2021 22:52:23 +0000
    Ready:          True
    Restart Count:  1
    Environment:    <none>
    Mounts:
      /var/run/secrets/kubernetes.io/serviceaccount from kube-api-access-9jj5w (ro)
Conditions:
  Type              Status
  Initialized       True
  Ready             True
  ContainersReady   True
  PodScheduled      True
Volumes:
  kube-api-access-9jj5w:
    Type:                    Projected (a volume that contains injected data from multiple sources)
    TokenExpirationSeconds:  3607
    ConfigMapName:           kube-root-ca.crt
    ConfigMapOptional:       <nil>
    DownwardAPI:             true
QoS Class:                   BestEffort
Node-Selectors:              <none>
Tolerations:                 node.kubernetes.io/not-ready:NoExecute op=Exists for 300s
                             node.kubernetes.io/unreachable:NoExecute op=Exists for 300s
Events:
  Type    Reason          Age   From               Message
  ----    ------          ----  ----               -------
  Normal  Scheduled       23h   default-scheduler  Successfully assigned default/pythonweb-pod to ip-172-31-30-240
  Normal  Pulled          23h   kubelet            Container image "python/flask-web:v1" already present on machine
  Normal  Created         23h   kubelet            Created container pythonweb-container
  Normal  Started         23h   kubelet            Started container pythonweb-container
  Normal  SandboxChanged  24m   kubelet            Pod sandbox changed, it will be killed and re-created.
  Normal  Pulled          24m   kubelet            Container image "python/flask-web:v1" already present on machine
  Normal  Created         24m   kubelet            Created container pythonweb-container
  Normal  Started         24m   kubelet            Started container pythonweb-container

