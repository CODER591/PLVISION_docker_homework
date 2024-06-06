FROM alpine:latest

# Install netcat
RUN apk add --no-cache netcat-openbsd

# Copy the netcat client script into the container
COPY client_run.sh /usr/local/bin/client_run.sh
COPY spam.txt /usr/local/bin/spam.txt


RUN chmod +x /usr/local/bin/client_run.sh

ENTRYPOINT ["/usr/local/bin/client_run.sh"]
CMD ["127.0.0.1", "5959"]