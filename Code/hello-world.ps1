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
kubectl get nodes -o wide

# Firewall Rules and Network Access
# If you're running Kubernetes locally or on a restricted network, ensure that the firewall is 
# open on the NodePort range (usually between 30000-32767) and that port 30837 is accessible from your client machine.
