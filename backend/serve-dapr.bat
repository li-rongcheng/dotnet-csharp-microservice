@echo off
SET APP_PORT=5100
:: dapr run --app-id entry --dapr-http-port 3500
dapr run --app-id backend --app-port %APP_PORT% -- dotnet watch run --urls http://localhost:%APP_PORT%
@echo on
