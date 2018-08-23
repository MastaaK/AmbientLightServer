FROM resin/rpi-raspbian

RUN apt-get update \
	&& apt-get install -y \
      git \
      libjansson-dev \
      liblog4cplus-dev \
      libboost-dev \
      wiringpi \
      libopencv-dev \
      libopencv-dev \
      libboost-thread-dev \
      libboost-date-time-dev \
      libboost-system-dev \
      libboost-iostreams-dev \
      libboost-timer-dev \
 	&& apt-get clean \
 	&& rm -rf /var/lib/apt/lists/* \
  && cd ~ \
  && git clone https://github.com/waldobronchart/AmbientLightServer \
  && cd ~/AmbiLightServer/ \
  && mkdir build \
  && make \

CMD ["sh ~/AmbiLightServer/run.sh"]
