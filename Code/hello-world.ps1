   kubectl apply -f hello-world.yaml
   kubectl get pods
   
   kubectl expose deployment hello-world --type=LoadBalancer --port=8080
   kubectl get svc


>>> If the EXTERNAL-IP is <pending> for too long:
kubectl expose deployment hello-world --type=NodePort --port=8080
http://<Node-IP>:<NodePort>
