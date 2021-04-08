@echo off
SET APP_PORT=5101
:: dapr run --app-id entry --dapr-http-port 3500
dapr run --app-id backend2 --app-port %APP_PORT% -- dotnet watch run --urls http://localhost:%APP_PORT%
@echo on
