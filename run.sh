# Build image
# sudo docker build --rm -f Dockerfile -t cpp-serv:latest .
# Or pull from Docker Hub
sudo docker pull dmitrydenisov/cpp-serv

# Remove temporary image (it is only needed if you do docker build on your machine)
sudo docker image prune --filter label=stage=builder -y

# Run docker container
sudo docker run -p 18080:18080 -d --restart always --name cpp_cont dmitrydenisov/cpp-serv:latest

