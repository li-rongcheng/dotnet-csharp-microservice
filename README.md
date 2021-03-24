# About Solution

```shell
$ tye run --watch
```

Then open tye dashboard from http://127.0.0.1:8000

Call backend service ether from:
http://localhost:8453/weatherforecast
or from:
http://localhost:6117/v1.0/invoke/backend/method/weatherforecast

The port number 6117 is the dapr http port, which can be found from the tye dashboard.
