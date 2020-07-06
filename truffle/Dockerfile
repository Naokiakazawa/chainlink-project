FROM node:10.17.0
LABEL maintainer='Naoki Akazawa'
ENV TZ=Asia/Tokyo
SHELL ["/bin/bash", "-c"]
RUN npm install -g --unsafe-perm truffle@5.1.33 @truffle/hdwallet-provider
WORKDIR /usr/app
RUN npm install @openzeppelin/contracts@2.5.1
WORKDIR /usr/app/src
EXPOSE 3000 8545
RUN rm /root/.bashrc
COPY .bashrc /root/.bashrc
COPY truffle_entrypoint.sh /
RUN chmod 777 /truffle_entrypoint.sh
ENTRYPOINT [ "/bin/bash", "/truffle_entrypoint.sh" ]