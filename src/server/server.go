package main

import (
	"net/http"
	"io"
	"fmt"
)

func helloHandler(w http.ResponseWriter, r *http.Request) {
	io.WriteString(w, "<h1>Hello Dude 1! I am a server created by Ben.</h1>")
}

func welcomeHandler(w http.ResponseWriter, r *http.Request) {
	io.WriteString(w, "<h1>Welcome to the SimpleServer!</h1>")
}

func main() {
	fmt.Println("Starting Server..")
	http.HandleFunc("/", welcomeHandler)
	http.HandleFunc("/hello/", helloHandler)
	http.ListenAndServe(":8080", nil)

	fmt.Println("Server Started!!")
}
