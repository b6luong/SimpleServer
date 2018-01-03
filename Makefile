BUILD_ROOT=${PWD}

.PHONY: server
server:
	@echo "Building server"

	mkdir ${BUILD_ROOT}/build || true
	go build -o ${BUILD_ROOT}/build/myserver server

.PHONY: clean
clean:
	@echo "Cleaning workspace"
	rm -r build
