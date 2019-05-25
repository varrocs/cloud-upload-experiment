FROM golang:latest
RUN mkdir /app
ADD . /app/
WORKDIR /app
RUN go build -o main .
VOLUME /storage
EXPOSE 3000
CMD [ "/app/upload-test-go-gin" ]
