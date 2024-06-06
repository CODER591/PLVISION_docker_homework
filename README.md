



### Run server
``` bash
docker run -d --network test_network netcat-server
docker container run -p 5959:5959 --network test_network  netcat-server 5959
#in detached mode.
docker run -d -p 5959:5959  --network test_network netcat-server
docker container -f <container hash>
```

### Connect from client to server in specified network
``` bash
$ docker run -it --network test_network bash
# in bash(in container), we are running
$ echo "Hello!" | nc -v <ip-address> <port>
```