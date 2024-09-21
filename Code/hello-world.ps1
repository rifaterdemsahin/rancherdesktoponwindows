   kubectl apply -f hello-world.yaml
   kubectl get pods
   
   kubectl expose deployment hello-world --type=LoadBalancer --port=8080
   kubectl get svc
