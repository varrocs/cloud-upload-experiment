package main

import (
	"io"
	"os"
	"fmt"
	"net/http"
	"path/filepath"
	"sync/atomic"
)

const storageBase = "/storage"

var counter uint64 = 0

func uploadHandler(w http.ResponseWriter, r *http.Request) {
	c := atomic.AddUint64(&counter, 1)
	filename := filepath.Join(storageBase, fmt.Sprint("uploadfile-%d", c))
	file, err := os.Create(filename)
	if err != nil {
		panic(err)
	}
	n, err := io.Copy(file, r.Body)
	if err != nil {
		panic(err)
	}

	w.Write([]byte(fmt.Sprintf("%d bytes are recieved.\n", n)))
	fmt.Println("Finished with file %s", filename)
}

func main() {
	http.HandleFunc("/upload", uploadHandler)
	fmt.Println("Serving on :3000")
	http.ListenAndServe(":3000", nil)
}
