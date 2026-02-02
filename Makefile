OPENAPI_SPEC := api.yaml

.PHONY: all
all: lint format

.PHONY: tools
tools:
	@echo "Installing tools..."
	go install github.com/pb33f/libopenapi-validator/cmd/validate@latest
	go install github.com/google/yamlfmt/cmd/yamlfmt@latest
	@echo "Tools installed. Make sure installed go binaries are in your PATH."

.PHONY: lint
lint: tools
	@echo "Validating OpenAPI spec..."
	validate $(OPENAPI_SPEC)

.PHONY: format
format: tools
	@echo "Formatting OpenAPI spec..."
	yamlfmt $(OPENAPI_SPEC)