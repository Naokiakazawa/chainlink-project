FROM node:10.17.0
LABEL maintainer='Naoki Akazawa'
ENV TZ=Asia/Tokyo
RUN npm install -g --unsafe-perm ganache-cli@6.9.1
RUN mkdir -p /var/ganache
ENV DOCKER true
ENV DATADIR /var/ganache
WORKDIR /usr/src/app
EXPOSE 8545
RUN rm /root/.bashrc
COPY .bashrc /root/.bashrc
ENV MNEMONIC donate dash twice sword chapter october aisle trade eager ladder coyote country
ENV NETWORKID 5777
ENTRYPOINT ["bash", "-c", "ganache-cli --host=0.0.0.0 --db=${DATADIR} --mnemonic=\"${MNEMONIC}\" --networkId=${NETWORKID}"]