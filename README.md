
>NOTE: I have created client image, and it does connects, but for some reason I am not able to send anything via that connection. It possible only when I am running `netcat` via **bash** image.

### 1. Create network
``` bash
docker network create test_network
```

### 2. Build images
**Server**
``` bash
$ cd server/
$ sudo docker build -t netcat-server .
```
**Client**
``` bash
$ cd server/
$ sudo docker build -t netcat-client .
```


### 3. Run server
``` bash
docker container run -p 5959:5959 --network test_network  netcat-server 5959
#in detached mode. (choice)
docker container run -d -p 5959:5959  --network test_network netcat-server
docker container -f <container hash>
```

### 4. Find out Server IP
``` bash
#see in "Containers chapter"
docker network inspect test_network
# or
docker container inspect <container-name>
```

### Run client (only connection)
``` bash
docker container run -it --network test_network  netcat-client <IP address> <PORT>
```

### Run client(with message being sent)
``` bash
$ docker run -it --network test_network bash
# in bash(in container), we are running
$ echo "Hello!" | nc -v <ip-address> <port>
```