FROM ubuntu:24.04

# avoiding user interaction during package install
ENV DEBIAN_FRONTEND=noninteractive

# install required packages
RUN apt-get update && \
    apt-get install -y curl jq && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh

# make it executable
RUN chmod +x /entrypoint.sh

# set the entrypoint
ENTRYPOINT ["/entrypoint.sh"]
