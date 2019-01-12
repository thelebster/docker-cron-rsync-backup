FROM alpine:3.8

LABEL maintainer="Anton Lebedev <mailbox@lebster.me>"

RUN apk add --no-cache bash curl openssh sshpass rsync

COPY backup.sh /

RUN chmod +x /backup.sh

# Add crontab file in the cron directory
COPY crontab /crontab

# Apply cron job
RUN crontab /crontab

COPY entrypoint.sh /

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["crond", "-f", "-L -"]
