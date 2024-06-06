



### Run server
``` bash
docker run -d --network test_network netcat-server
docker container run -p 5959:5959 --network test_network  netcat-server 5959
```

### Connect from client to server in specified network
``` bash
docker run -it --network test_network netcat-client 172.18.0.2 5959
docker run -it --network test_network bash
```