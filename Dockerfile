FROM ubuntu:20.04

# Set one or more individual labels
LABEL stock.contianer.version="0.0.1-beta"
LABEL vendor1="Mauer Software"
LABEL stock.contianer.release-date="2021-07-31"

# update the image
RUN ln -snf /usr/share/zoneinfo/$(curl https://ipapi.co/timezone) /etc/localtime
RUN apt update 

# Install deps 
RUN  apt install -y git \
                    golang-go
RUN go get github.com/alpacahq/alpaca-trade-api-go/alpaca && \
    go get github.com/alpacahq/alpaca-trade-api-go/common && \
    go get github.com/shopspring/decimal

# Clean the image
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* 

# Build the app
COPY . /app
WORKDIR /app
RUN go build
ADD .env /.env
CMD . /.env && ./goStocks