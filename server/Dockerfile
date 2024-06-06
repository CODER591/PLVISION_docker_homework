FROM alpine:latest

# Install netcat
RUN apk add --no-cache netcat-openbsd

# Copy the netcat server script into the container
COPY server_run.sh /usr/local/bin/server_run.sh

RUN chmod +x /usr/local/bin/server_run.sh

#Giving ability to pass argument to a script
ENTRYPOINT ["/usr/local/bin/server_run.sh"]
CMD ["5959"]
