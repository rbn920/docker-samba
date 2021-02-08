FROM alpine:latest
LABEL maintainer="Robby Nelson"

RUN apk add --no-cache samba

COPY smb.conf /etc/samba/smb.conf

EXPOSE 134/udp 138/udp 139 445

ENTRYPOINT [ "smbd", "--foreground", "--log-stdout", "--no-process-group" ]
CMD []