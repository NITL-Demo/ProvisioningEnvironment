#
# Haproxy Dockerfile
#
# https://github.com/dockerfile/haproxy
#

# Pull base image.
FROM ubuntu


RUN apt-get -q update && apt-get -yq install python python-simplejson python-apt
# Install Haproxy.
RUN \
  sed -i 's/^# \(.*-backports\s\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get install -y haproxy && \
  sed -i 's/^ENABLED=.*/ENABLED=1/' /etc/default/haproxy && \
  rm -rf /var/lib/apt/lists/*

# Add files.
ADD dockers/haproxy/haproxy.cfg /etc/haproxy/haproxy.cfg
ADD dockers/haproxy/start.bash /haproxy-start

RUN chmod 755 /haproxy-start

# Define mountable directories.
VOLUME ["/haproxy-override"]

# Define working directory.
WORKDIR /etc/haproxy

# Define default command.
CMD ["bash", "/haproxy-start"]

# Expose ports.
EXPOSE 80
EXPOSE 443
