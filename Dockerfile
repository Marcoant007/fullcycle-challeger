# Use a imagem oficial do Go como base
FROM golang:1.18

# Copie o código fonte para dentro do container
COPY main.go .

# Compile o código
RUN go build main.go

# Defina o comando de inicialização do container
CMD ["./main"]