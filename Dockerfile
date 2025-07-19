FROM debian:12.11-slim
RUN apt-get update && apt-get install -y --no-install-recommends \
    cowsay \
    fortune-mod \
    fortunes \
    && rm -rf /var/lib/apt/lists/*
COPY custom.cow /usr/share/cowsay/cows/custom.cow
ENV COWPATH=/usr/share/cowsay/cows
ENV COWSAY_CHAR=custom
ENV PATH="/usr/games:${PATH}"
CMD ["/bin/sh", "-c", "fortune | cowsay -f $COWSAY_CHAR"]
