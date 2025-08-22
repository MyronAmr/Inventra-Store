FROM alpine:latest
WORKDIR /app
RUN apk add --no-cache curl unzip
RUN curl -L -o pb.zip https://github.com/pocketbase/pocketbase/releases/download/v0.22.9/pocketbase_0.22.9_linux_amd64.zip \
    && unzip pb.zip \
    && rm pb.zip
EXPOSE 8090
CMD ["./pocketbase", "serve", "--http=0.0.0.0:8090"]
