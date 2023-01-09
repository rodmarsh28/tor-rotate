ARG PORT HOST
FROM mattes/rotating-proxy:latest
USER root
RUN apt-get install -y openssl
ENV HOST=${HOST}
ENV PORT=4444
ENV SPORT=5566
ADD start.sh /_railway/start.sh
ENTRYPOINT [ "/bin/sh", "/_railway/start.sh" ]
