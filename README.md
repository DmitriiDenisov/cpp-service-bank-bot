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
{
  foo='blabla',
  pew=32,
  count=['a', 'b'],
  double_param=2.31
}
```

### Output example:

```
{
  "arr1":[1,3,4],
  "list_str":["a","b"],
  "double_param":3.31,
  "arr2":[null,2],
  "message":"Hello, World!",
  "success":1,
  "foo":"'blabla'",
  "pew_double":16,
  "pew_str":"32",
  "pew_int_stoi":35
}
```
