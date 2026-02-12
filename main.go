package main

import "fmt"

//go:generate go tool oapi-codegen -config cfg.yaml -o boilerplate.go api.yaml

func main() {
	fmt.Println("Hello world!")
}
