# Rancher Desktop and Kubernetes Setup on Windows 11

Clone Repo
   ```
mkdir projects
cd projects
git clone git@github.com:rifaterdemsahin/rancherdesktoponwindows.git
git clone https://github.com/rifaterdemsahin/rancherdesktoponwindows.git
   ```
## Introduction

This repository contains a step-by-step guide to installing **Rancher Desktop** and setting up **Kubernetes** on Windows 11. Rancher Desktop is a versatile tool that integrates container management with Kubernetes, making it easier to run Kubernetes clusters locally.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Installation Steps](#installation-steps)
- [Configuring Kubernetes](#configuring-kubernetes)
- [Using kubectl](#using-kubectl)
- [Deploying a Kubernetes App](#deploying-a-kubernetes-app)
- [Troubleshooting](#troubleshooting)
- [Additional Resources](#additional-resources)

## Prerequisites

Before starting, ensure you have the following:

- Windows 11
- Windows Subsystem for Linux (WSL 2) enabled
- Administrator privileges

## Installation Steps

1. **Download Rancher Desktop**: Get the latest installer from the [Rancher Desktop website](https://rancherdesktop.io/).
2. **Install Rancher Desktop**:
   - Run the `.exe` file and follow the installation prompts.
   - Ensure WSL 2 is enabled (`wsl --install` in PowerShell if not already set up).
3. **Start Rancher Desktop**:
   - After installation, open Rancher Desktop and configure the Kubernetes settings (version and container runtime).

## Configuring Kubernetes

1. Open Rancher Desktop.
2. Navigate to the **Settings** menu.
3. Choose your preferred version of Kubernetes.
4. Enable Kubernetes and wait for it to install.

## Using kubectl

Once Rancher Desktop is up and running:

1. Open PowerShell or Windows Terminal.
2. Verify that `kubectl` is installed by running:
   ```bash
   kubectl version --client
   ```
3. Check Kubernetes nodes:
   ```bash
   kubectl get nodes
   ```

## Deploying a Kubernetes App

1. Create a deployment using the `nginx` image:
   ```bash
   kubectl create deployment my-nginx --image=nginx
   ```
2. Expose the deployment as a service:
   ```bash
   kubectl expose deployment my-nginx --port=80 --type=NodePort
   ```
3. Check the status of the pods:
   ```bash
   kubectl get pods
   ```

## Troubleshooting

If you encounter issues:

1. **WSL 2 Issues**: Run the following to update or reinstall WSL 2:
   ```bash
   wsl --update
   wsl --shutdown
   ```
2. **Kubeconfig Issues**: If `kubectl` isn't pointing to the correct context, try resetting the kubeconfig via Rancher Desktop’s settings or manually updating the context.

## Additional Resources

- [Rancher Desktop Documentation](https://rancherdesktop.io/)
- [Kubernetes Documentation](https://kubernetes.io/docs/)
- [GitHub Repository](https://github.com/rifaterdemsahin)

---

Feel free to reach out if you have any questions or encounter any issues!

## Author

- **Rifat Erdem Sahin**
  - [LinkedIn](https://www.linkedin.com/in/rifaterdemsahin/)
  - [GitHub](https://github.com/rifaterdemsahin)

Happy coding! 🚀

This README provides a structured overview of the installation and configuration steps for Rancher Desktop and Kubernetes on Windows 11. Let me know if you'd like to add or change anything!
