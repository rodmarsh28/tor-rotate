ARG PORT HOST
FROM mattes/rotating-proxy:latest
USER root
ENV HOST=${HOST}
ENV SPORT=8118
ENV PORT=5566
ADD start.sh /_railway/start.sh
ENTRYPOINT [ "/bin/sh", "/_railway/start.sh" ]
