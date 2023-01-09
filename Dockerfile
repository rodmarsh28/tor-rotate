ARG PORT HOST
FROM mattes/rotating-proxy:latest
USER root
ENV HOST=${HOST}
ENV PORT=4444
ENV SPORT=5566
ADD start.sh /_railway/start.sh
ENTRYPOINT [ "/bin/sh", "/_railway/start.sh" ]
