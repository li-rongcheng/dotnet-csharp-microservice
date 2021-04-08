# About Solution

## Projects

- Both backend and backend2 disable https
- Project frontend: a razor page project

## Run Using Tye

Do:

```shell
tye run --watch
```

Then open tye dashboard from http://127.0.0.1:8000

## Run Using Dapr

Do:

```shell
dapr run --app-id entry --dapr-http-port 3500

cd backend
serve-dapr.bat

cd backend2
serve-dapr.bat
```

Then open links: 

- http://localhost:3500/v1.0/invoke/backend/method/weatherforecast
- http://localhost:3500/v1.0/invoke/backend2/method/weatherforecast

## Call APIs

- Directly call:

  http://localhost:8453/weatherforecast

- Via dapr:

  If dapr extension is enabled, open:
  http://localhost:6117/v1.0/invoke/backend/method/weatherforecast

  The port number 6117 is the dapr http port, which can be found from the tye dashboard.

- Via tye builtin nginx ingress:

  Find the path mapping in `tye.yaml`

  > Note: two ingress services are configured

  - https://localhost:8180/api/backend/weatherforecast
  - https://localhost:8181/api/backend/weatherforecast
  - https://localhost:8180/swagger

  > Note: path `/swagger` seems not to be changable

## Bug

- Websocket can't work behind the tye builtin ingress, so blazor server can't work

  That means: even if the ingress mapping https://localhost:8181/
  (which maps to service `frontend-blazor-server`) can successfully open the UI
  pages, the relevant blaozr function still can't work.

  Find the error message from the browser console.
