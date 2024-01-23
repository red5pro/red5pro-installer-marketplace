# Use Ubuntu 22.04 as the base image
FROM ubuntu:22.04

# Create the directory /root/install in the container
RUN mkdir -p /root/install

# Copy everything from the local directory to /root/install in the container
COPY . /root/install

# Copy the installred5 command into a path
COPY installred5 /usr/local/bin

# Start Bash when the container launches
CMD ["/bin/bash"]
