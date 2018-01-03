package main.go

import (
	"net/http"
	"io"
)

func helloHandler(w http.ResponseWriter, r *http.Request) {
	io.WriteString(w, "Hello world! I am a server created by Ben.")
}

func main() {
	http.HandleFunc("/hello/", helloHandler)
	http.ListenAndServe(":8080", nil)
}
