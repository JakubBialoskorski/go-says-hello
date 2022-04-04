# go-says-hello

IP / endpoint check written in Go. It intercepts the traffic and shows your "external" IP address (public).

It was developed to quickly check connectivity on AWS / GCP / Azure.

---
How to:

* `go run .` and browse to `<IP>:8080/hello`

OR

* `docker run -d -p 8080:8080 jakubbialoskorski/go-says-hello` and browse to `<IP>:8080/hello`

`<IP>` is the public address, assuming you've opened port `8080` for inbound traffic.

Both CAN be opened from localhost, but you'll probably get IPv6 or container's IP.

---
Development:

To quickly build multiarch binaries, run: 
* `chmod +x build-multiarch.sh` 
* `./build-multiarch.sh github.com/JakubBialoskorski/go-says-hello`