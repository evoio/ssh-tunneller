FROM alpine:latest

RUN apk add --update openssh-client && \
  rm -rf /var/cache/apk/*

ENV CONFIG_FILE configs/project-rdp

CMD ssh \
  -tt \
  -F /root/.ssh/${CONFIG_FILE} bastion \
  -o StrictHostKeyChecking=no \
  && while true; do sleep 30; done;
