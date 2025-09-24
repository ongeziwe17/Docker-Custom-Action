FROM alpine:3.10

# install required packages
RUN apt update && apt add --no-cache curl jq

# copy entrypoint.sh scrip
COPY entrypoint.sh /entrypoint.sh

# make file executable
RUN chmod -x /entrypoint.sh

# dockerfile entrypoint
ENTRYPOINT ["/entrypoint.sh"]