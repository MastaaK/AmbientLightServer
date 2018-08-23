FROM resin/rpi-raspbian

RUN apt-get update
RUN apt-get install -y git libjansson-dev liblog4cplus-dev libboost-dev wiringpi libopencv-dev libopencv-dev libboost-thread-dev libboost-date-time-dev libboost-system-dev libboost-iostreams-dev libboost-timer-dev
RUN cd ~
RUN git clone https://github.com/waldobronchart/AmbientLightServer
RUN cd ~/AmbiLightServer/
RUN mkdir build
RUN make

CMD ["sh ~/AmbiLightServer/run.sh"]
