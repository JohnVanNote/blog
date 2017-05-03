# Dockerfile
#
# John Van Note
# 2017-04-29
#
# Dockerfile for blog
#

# Minimal Docker image
FROM alpine
MAINTAINER John Van Note <johnlvannote@protonmail.com>

# Install packages
RUN apk update && \
    apk --no-cache add \
    ca-certificates \
    wget && \
    update-ca-certificates

# Store Environmental vars
ENV BLOG_VERSION 0.1

# Hugo 
ENV HUGO_VERSION 0.20.6
RUN wget https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
  tar xzf hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
  rm -rf hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
  mv hugo /usr/bin/hugo


WORKDIR /usr/src/blog/

# Copy current directory contents to container
COPY . /usr/src/blog/

# Expose port 80
EXPOSE 80

# Command
CMD ["./deploy.sh"]
