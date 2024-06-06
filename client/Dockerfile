FROM alpine:latest

# Install netcat
RUN apk add --no-cache netcat-openbsd

# Copy the netcat client script into the container
COPY client_run.sh /
COPY spam.txt /

RUN chmod +x /client_run.sh

ENTRYPOINT ["/client_run.sh"]
CMD ["127.0.0.1", "5959"]