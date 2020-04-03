FROM ubuntu:18.04
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        locales \
        tzdata \
        openssl \
        netbase \
        apt-utils \
        apt-transport-https \
        libreadline7 \
        ca-certificates \
        curl \
		libc6-i386

RUN locale-gen en_US.UTF-8 \
    && update-locale LANG=en_US.UTF-8 \
    && echo "Etc/UTC" > /etc/timezone \
    && dpkg-reconfigure -f noninteractive tzdata

RUN apt install -y --no-install-recommends \
	gnupg git build-essential wget software-properties-common apt-transport-https clang

CMD ["/bin/bash"]
