FROM debian:12.11-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    cowsay \
    fortune-mod \
    fortunes \
    locales \
    && sed -i 's/^# *en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen \
    && locale-gen \
    && update-locale LANG=en_US.UTF-8 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENV LANG=en_US.UTF-8 \
    LANGUAGE=en_US:en \
    LC_ALL=en_US.UTF-8 \
    PATH="/usr/games:${PATH}"

COPY custom.cow /usr/share/cowsay/cows/custom.cow

CMD ["/bin/bash", "-c", "fortune | cowsay -f custom"]