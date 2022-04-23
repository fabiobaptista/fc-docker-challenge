FROM golang:alpine3.15 AS app

WORKDIR /app
COPY full-cycle-rocks.go .
RUN go build full-cycle-rocks.go

FROM scratch

COPY --from=app /app/full-cycle-rocks . 
CMD [ "./full-cycle-rocks" ]