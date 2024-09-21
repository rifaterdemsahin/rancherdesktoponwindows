kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.7.0/aio/deploy/recommended.yaml
kubectl create serviceaccount dashboard-admin-sa
# kubectl delete serviceaccount dashboard-admin-sa

kubectl create clusterrolebinding dashboard-admin-sa-binding --clusterrole=cluster-admin --serviceaccount=default:dashboard-admin-sa
kubectl get serviceaccount dashboard-admin-sa


# Browse >>> http://localhost:8001.

# Tokens
	
kubectl get secret
kubectl get secret $(kubectl get serviceaccount dashboard-admin-sa -o jsonpath="{.secrets[0].name}") -o go-template="{{.data.token | base64decode}}"
kubectl get secret

# Use a Static Token
kubectl create secret generic dashboard-admin-sa-token --from-literal=token=mysupersecrettoken1234567890 --namespace default
kubectl get secret

# Create Your Tokens
$token = [convert]::ToBase64String((1..32 | ForEach-Object {Get-Random -Maximum 255}))
kubectl create secret generic dashboard-admin-sa-token --from-literal=token=$token --namespace default


	
kubectl describe secret dashboard-admin-sa-token
