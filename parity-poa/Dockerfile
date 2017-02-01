FROM ubuntu:14.04

ENV PARITY_DEB_URL=https://github.com/agriessel/parity/releases/download/v1.5.0/parity_1.5.0_amd64.deb

# install tools and dependencies
RUN apt-get update
RUN apt-get install -y -qq curl expect expect-dev libssl-dev openssl

# Install Parity
RUN curl -L $PARITY_DEB_URL > /tmp/parity.deb
RUN dpkg -i /tmp/parity.deb
RUN rm /tmp/parity.deb

#Configure keystore
RUN mkdir -p /root/.parity/keys
COPY key.json /root/.parity/keys/
COPY key.pass /root/
COPY chain.json /root/

EXPOSE 8545 

ENTRYPOINT ["parity", "--chain", "/root/chain.json", "--author", "0x133e5245e3e5ab3f65e73120b34cc29f0f7ba504", "--unlock", "0x133e5245e3e5ab3f65e73120b34cc29f0f7ba504", "--password", "/root/key.pass", "--rpccorsdomain", "*", "--jsonrpc-interface", "all", "--jsonrpc-hosts", "all", "--no-dapps", "--engine-signer","0x133e5245e3e5ab3f65e73120b34cc29f0f7ba504"]
