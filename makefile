VERSION=1.0.0

# build
.PHONY: build
build:
	mkdir -p bin/ & go build -ldflags "-X main.Version=$(VERSION)" -o ./bin/ ./...
	echo '[task: build] build (binaries) completed!'

# Format code.
.PHONY: static-check
static-check:
	revive -formatter stylish -config revive-config.toml ./...