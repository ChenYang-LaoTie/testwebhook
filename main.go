package main

import (
	"fmt"
	"io"
	"log"
	"net/http"
)

func main() {

	http.HandleFunc("/hook", TestWebHook)

	err := http.ListenAndServe(":9090", nil) //设置监听的端口
	if err != nil {
		log.Fatal("ListenAndServe: ", err)
	}

}

func TestWebHook(w http.ResponseWriter, r *http.Request) {
	fmt.Println("Method - ", r.Method)
	fmt.Println(r.URL)
	s, _ := io.ReadAll(r.Body) //把	body 内容读入字符串 s
	fmt.Println(string(s))
}
