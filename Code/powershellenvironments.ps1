$HOME/.kube/config
$env:KUBECONFIG="$HOME/.kube/config"
echo $env:KUBECONFIG
kubectl get nodes
