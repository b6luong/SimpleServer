# SimpleServer
This repository is creates a simple server, implemented in GoLang, that runs in a docker container

## Before You Begin 
- [Install Golang](https://golang.org/doc/install)  
- [Install Docker](https://docs.docker.com/engine/installation/)  

## Run Locally
1. Clone the repository  
`git clone https://github.com/b6luong/SimpleServer.git`
2. Go to the repo directory  
`cd SimpleServer`
3. Set the environment  
`source ./envrc`
4. Build the executable  
`make server`
5. Start the server  
`./build/myserver`
6. Verify the server. You should expect `<h1>Welcome to the SimpleServer!</h1>` response  
`curl http://localhost:8080`
7. Verify the server. You should expect `<h1>Hello world! I am a server created by Ben.</h1>` response  
`curl http://localhost:8080/hello/`

## Run As Docker Image  
Ensure that you are able to run locally from the instructions above.  
1. Go to the repo directory  
`cd SimpleServer`
2. Build docker image  
`make docker`  
3. Start the server as a docker image  
`docker run -p 5000:8080 simple-server`
4. Verify the server. You should expect `<h1>Welcome to the SimpleServer!</h1>` response  
`curl http://localhost:8080`
5. Verify the server. You should expect `<h1>Hello world! I am a server created by Ben.</h1>` response  
`curl http://localhost:8080/hello/`
