FROM ubuntu:hirsute

RUN apt-get update \
  && apt-get install -y \
  software-properties-common \
  && add-apt-repository ppa:sane-project/sane-release \
  && apt-get update \
  && apt install libsane libsane-common sane-utils \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

EXPOSE 6566
