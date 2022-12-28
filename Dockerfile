FROM golang:1.18.3-alpine AS build
WORKDIR /src
COPY . .
RUN GOOS="linux" GOARCH="amd64" CGO_ENABLED=0 go build -a -o /idea-test .
FROM scratch AS bin
COPY --from=build /idea-test ./
ENTRYPOINT ["./idea-test"]
