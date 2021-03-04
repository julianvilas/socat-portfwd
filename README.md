# socat-portfwd
Docker image to setup port forwarding inside a container using socat.

Required environment vars to setup the port forwarding:
+ `SOCAT_PORT` (example: `8080`)
+ `TARGET_HOST` (example: `target.example.com`)
+ `TARGET_PORT` (example: `80`)

Running example:
```
$ docker run -ti --rm --name socat -p 8080:8080 -e SOCAT_PORT=8080 -e TARGET_HOST=www.google.com -e TARGET_PORT=80 -d redsadic/socat-portfwd

$ curl http://localhost:8080
<!doctype html><html itemscope="" itemtype="http://schema.org/WebPage" lang="es"><head><meta content="Google...
```
