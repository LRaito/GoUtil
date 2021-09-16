VERSION=1.0.0

# Init
.PHONY: init
init:
	go get github.com/mgechev/revive@v1.0.6

# Build
.PHONY: build
build:
	mkdir -p bin/ & go build -ldflags "-X main.Version=$(VERSION)" -o ./bin/ ./...
	echo '[task: build] build (binaries) completed!'

# Static check
.PHONY: static-check
static-check:
	revive -formatter stylish -config revive-config.toml ./...