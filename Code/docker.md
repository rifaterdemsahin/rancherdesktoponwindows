```markdown
# Docker Basics

## Table of Contents
1. [Introduction to Docker](#introduction-to-docker)
2. [Installing Docker](#installing-docker)
3. [Docker Terminology](#docker-terminology)
4. [Creating a Simple Hello World Docker App](#creating-a-simple-hello-world-docker-app)
5. [Basic Docker Commands](#basic-docker-commands)
6. [Cleaning Up Docker](#cleaning-up-docker)

## Introduction to Docker

Docker is an open platform for developing, shipping, and running applications. It allows you to separate your applications from your infrastructure, making it easier to deliver software quickly and reliably. Docker helps you manage the complexity of application dependencies by packaging everything into containers.

## Installing Docker

Follow the official [Docker installation documentation](https://docs.docker.com/get-docker/) for your operating system:

- For **Windows**: You can install Docker Desktop.
- For **macOS**: Docker Desktop is also available.
- For **Linux**: Install the Docker Engine using your package manager.

Once installed, you can verify Docker is running by typing the following command in your terminal:

```bash
docker --version
```

## Docker Terminology

- **Docker Image**: A read-only template with instructions for creating a container. It includes the application and its dependencies.
- **Docker Container**: A runnable instance of an image. Containers are isolated environments for running applications.
- **Dockerfile**: A text file that contains all the commands to build an image.
- **Docker Hub**: A cloud-based repository where Docker images are stored and shared.

## Creating a Simple Hello World Docker App

### Step 1: Create a Directory for Your Project

```bash
mkdir hello-docker
cd hello-docker
```

### Step 2: Create a Dockerfile

In the `hello-docker` directory, create a file named `Dockerfile` (no extension).

```dockerfile
# Use the official Python image from Docker Hub
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Run the hello.py script
CMD ["python", "./hello.py"]
```

### Step 3: Create a Hello World Python Script

In the same directory, create a `hello.py` file.

```python
print("Hello, World from Docker!")
```

### Step 4: Build the Docker Image

You can build your Docker image by running the following command:

```bash
docker build -t hello-docker .
```

- `-t hello-docker` names the image `hello-docker`.
- The `.` specifies that the Dockerfile is in the current directory.

### Step 5: Run the Docker Container

Now that the image is built, you can run it as a container:

```bash
docker run hello-docker
```

This will output:

```
Hello, World from Docker!
```

Congratulations! You've created and run a simple Docker container.

## Basic Docker Commands

Here are some basic Docker commands to help you manage your containers and images:

- **List Docker Images**:
  ```bash
  docker images
  ```
- **List Running Containers**:
  ```bash
  docker ps
  ```
- **Stop a Running Container**:
  ```bash
  docker stop <container_id>
  ```
- **Remove a Container**:
  ```bash
  docker rm <container_id>
  ```
- **Remove an Image**:
  ```bash
  docker rmi <image_id>
  ```

## Cleaning Up Docker

If you want to remove unused Docker images and containers, you can use:

- **Remove all stopped containers**:
  ```bash
  docker container prune
  ```
- **Remove unused images**:
  ```bash
  docker image prune
  ```

## Conclusion

Docker is a powerful tool for creating, deploying, and managing containers. In this guide, we walked through the basics of Docker, from installation to running a simple "Hello World" application. Docker helps you encapsulate your applications and their dependencies into containers, making development more streamlined and deployment more consistent.
```
