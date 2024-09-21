# Install
   kubectl apply -f hello-world.yaml
   kubectl get pods
   
   kubectl expose deployment hello-world --type=LoadBalancer --port=8080
   kubectl get svc
   curl -vk http://<loadbalancer>:<8080>

# If the EXTERNAL-IP is <pending> for too long:
kubectl delete svc hello-world
kubectl get svc
kubectl expose deployment hello-world --type=NodePort --port=8080
http://<Node-IP>:<NodePort>


# Diagnose
kubectl describe pod <pod-name>
kubectl logs <pod-name>
