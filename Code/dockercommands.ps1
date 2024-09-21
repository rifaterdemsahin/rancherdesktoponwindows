Start manual > Start on the desktop
docker pull nginx
docker run --name mynginx -p 8080:80 -d nginx
# Browse > http://localhost:8080
docker stop mynginx
docker rm mynginx
