FROM golang:1.18 as builder
WORKDIR /app
COPY . .
RUN go build -o main .

FROM scratch
COPY --from=builder /app/main .
CMD ["./main"]