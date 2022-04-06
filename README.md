# go-says-hello

[![Known Vulnerabilities](https://snyk.io/test/github/JakubBialoskorski/go-says-hello/badge.svg)](https://snyk.io/test/github/JakubBialoskorski/go-says-hello)

IP / endpoint check written in Go. It intercepts the traffic and shows your "external" IP address (public).

It was developed to quickly check connectivity on AWS / GCP / Azure.

---
There are three ways to run this repository:

* non-binary: `go run .` and browse to `<IP>:8080/hello`
* binary: 
  * grab one from the [releases](https://github.com/JakubBialoskorski/go-says-hello/releases)
  * copy it and make it executable with `cp go-says-hello-darwin-amd64 /usr/local/bin/go-says-hello && chmod +x /usr/local/bin/go-says-hello`
  * It can be then accessed system-wide with `go-says-hello` command
* Docker: `docker run -d -p 8080:8080 jakubbialoskorski/go-says-hello` and browse to `<IP>:8080/hello`

`<IP>` is the public address, assuming you've opened port `8080` for inbound traffic.

Both CAN be opened from localhost, but you'll probably get IPv6 or container's IP.

---
Development:

To quickly build multiarch binaries, run: 
* `chmod +x build-multiarch.sh` 
* `./build-multiarch.sh github.com/JakubBialoskorski/go-says-hello`