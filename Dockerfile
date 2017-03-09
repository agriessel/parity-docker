FROM ubuntu:14.04

# install tools and dependencies
RUN apt-get update
RUN apt-get install -y curl

RUN curl -L http://d1h4xl4cr1h0mo.cloudfront.net/v1.5.7/x86_64-unknown-linux-gnu/parity_1.5.7_amd64.deb > parity.deb
RUN dpkg -i parity.deb
RUN rm parity.deb
