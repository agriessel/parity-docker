FROM ubuntu:14.04

ENV PARITY_DEB_URL=http://d1h4xl4cr1h0mo.cloudfront.net/v1.5.7/x86_64-unknown-linux-gnu/parity_1.5.7_amd64.deb
# install tools and dependencies
RUN apt-get update
RUN apt-get install -y curl

RUN curl -L $PARITY_DEB_URL  > /tmp/parity.deb
RUN dpkg -i /tmp/parity.deb
RUN rm /tmp/parity.deb
