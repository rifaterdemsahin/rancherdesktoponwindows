# Initial Starters Windows
kubectl version --client	
kubectl config get-contexts

kubectl get nodes

# See one Container Working
kubectl create deployment my-nginx --image=nginx
kubectl expose deployment my-nginx --port=80 --type=NodePort
kubectl get pods
ubectl get service my-nginx


# Set WSL
export KUBECONFIG=/mnt/c/Users/<YourUsername>/.kube/config
echo $KUBECONFIG
