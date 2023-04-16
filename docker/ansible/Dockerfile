# Image and version
FROM alpine:3.14

# Install dependencies
RUN apk update && apk upgrade && \
    apk add --no-cache python3 py3-pip openssl ca-certificates && \
    apk add --no-cache --virtual .build-deps gcc python3-dev musl-dev libffi-dev openssl-dev && \
    pip3 install --upgrade pip

# Install Ansible
RUN pip3 install ansible
