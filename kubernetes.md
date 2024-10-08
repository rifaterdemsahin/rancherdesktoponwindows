# Basic kubectl Commands for Single Pods

Here are some essential kubectl commands for managing single pods:

1. Create a pod:
   ```
   # Creates a new pod named 'my-pod' using the latest nginx image
   kubectl run my-pod --image=nginx:latest
   ```

2. List all pods:
   ```
   # Displays a list of all pods in the current namespace
   kubectl get pods
   ```

3. Describe a specific pod:
   ```
   # Shows detailed information about the pod named 'my-pod'
   kubectl describe pod my-pod
   ```

4. Delete a pod:
   ```
   # Removes the pod named 'my-pod' from the cluster
   kubectl delete pod my-pod
   ```

5. Get pod logs:
   ```
   # Retrieves and displays the logs for the pod named 'my-pod'
   kubectl logs my-pod
   ```

6. Execute a command in a pod:
   ```
   # Opens an interactive shell session inside the 'my-pod' container
   kubectl exec -it my-pod -- /bin/bash
   ```

7. Port forward to a pod:
   ```
   # Forwards local port 8080 to port 80 of the 'my-pod' container
   kubectl port-forward my-pod 8080:80
   ```

8. Get pod YAML:
   ```
   # Outputs the YAML configuration of the 'my-pod' pod
   kubectl get pod my-pod -o yaml
   ```

9. Edit a pod (opens in default editor):
   ```
   # Opens the YAML configuration of 'my-pod' in the default text editor for modifications
   kubectl edit pod my-pod
   ```

10. Watch pod status:
    ```
    # Continuously monitors and displays changes to the status of 'my-pod'
    kubectl get pod my-pod --watch
    ```

Remember to replace `my-pod` with your actual pod name when using these commands.
