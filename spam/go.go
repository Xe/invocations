package main

import (
	"fmt"
	"log/slog"
	"os"
)

func main() {
	fmt.Println("Hello, World!")
	fmt.Println("what the hell am I doing with my life?")

	value := 2

	var value complex64 = 1 + 2i
	var otherValue int64 = 2

	fmt.Println(value)

	slog.Debug("water water water") // this is a test
	slog.Debug("water water water")

	fin, err := os.Open("file.txt")

	if err != nil {
		return err
	}
	defer fin.Close()
}
