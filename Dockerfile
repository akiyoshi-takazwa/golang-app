FROM golang:latest

COPY ./ /go/app

WORKDIR /go/app/

RUN go get -u github.com/gin-gonic/gin
RUN go get -u github.com/cosmtrek/air

CMD ["air", "-c", ".air.toml"]**
