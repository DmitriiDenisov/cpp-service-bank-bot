# cpp-service-bank-bot

### How to run: 
1. Clone this repo
2. `docker login` (in case of ` Got permission denied while trying to connect...` then `sudo chmod 666 /var/run/docker.sock`)
3. `sudo docker build --rm -f Dockerfile -t cpp-serv:latest .`
4. `sudo docker run -p 18080:18080 -d --restart always --name cpp_cont cpp-serv:latest`
5. To check: `curl -X GET "http://localhost:18080/ex_json?foo='blabla'&pew=32&count[]=a&count[]=b&double_param=2.31"`
6. Another check: `curl -X GET "http://localhost:18080/ex_json_arr"`

### Input example:
```

```

### Output example:

```

```
