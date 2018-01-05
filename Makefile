BUILD_ROOT=${PWD}

# make server
# This builds the executable from src/server/server.go and puts it in the build
# folder.
.PHONY: server
server:
	@echo "Building server"

	@mkdir ${BUILD_ROOT}/build || true
	env GOOS=linux GOARCH=amd64 go build -o ${BUILD_ROOT}/build/myserver server


# make clean
# This cleans the workspace by removing the build folder.
.PHONY: clean
clean:
	@echo "Cleaning workspace"
	rm -r build
	docker rmi -f simple-server 2> /dev/null || true


# make docker
# This first calls make server to build the executable in the build folder. Once
# built, copy the Dockerfile to the build folder and build docker image.
.PHONY: docker
docker: server
	@echo "Building docker image"

	cp ${BUILD_ROOT}/docker/Dockerfile ${BUILD_ROOT}/build/
	cd ${BUILD_ROOT}/build \
	&& docker build -t simple-server .
