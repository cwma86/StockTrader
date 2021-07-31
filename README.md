# StockTrader
Stock trading sandbox

## Local Install 
  Install dependencies
  ```bash
  apt install -y git golang-go
  go get github.com/alpacahq/alpaca-trade-api-go/alpaca 
  go get github.com/alpacahq/alpaca-trade-api-go/common 
  go get github.com/shopspring/decimal 
  ```
  Compile code
  ```
  #Navigate to the repository
  go build
  ```

## Run code 
  Add Alpaca key environement and url variables
  ```bash
  export APCA_API_KEY_ID="<your value>"
  APCA_API_BASE_URL="<your value>"
  APCA_API_SECRET_KEY="<your value>"
  ```


  ```bash 
  # Navigate to the repository
  ./goStocks
  ```




## Docker

### Build the docker
  Add Alpaca key environement and url variables
  ```bash
  export APCA_API_KEY_ID="<your value>"
  APCA_API_BASE_URL="<your value>"
  APCA_API_SECRET_KEY="<your value>"
  ```

  ```bash
  ./build-docker.sh
  ```

### Run the docker
```
sudo docker run stock-trader:latest
```