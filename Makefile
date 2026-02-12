OPENAPI_SPEC := api.yaml

.PHONY: all
all: lint format generate

.PHONY: tools
tools:
	@echo "Installing tools..."
	go install github.com/pb33f/libopenapi-validator/cmd/validate@v0.11.1
	go install github.com/google/yamlfmt/cmd/yamlfmt@v0.21.0
	@echo "Tools installed. Make sure installed go binaries are in your PATH."

.PHONY: lint
lint: tools
	@echo "Validating OpenAPI spec..."
	validate $(OPENAPI_SPEC)

.PHONY: generate
generate:
	go generate ./...

.PHONY: format
format: tools
	@echo "Formatting OpenAPI spec..."
	yamlfmt $(OPENAPI_SPEC)