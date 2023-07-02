# Base image
FROM ubuntu:22.04

# Set the working directory
WORKDIR /app

# Create a non-root user
RUN useradd -ms /bin/bash julian

# Install necessary packages
RUN apt-get update && \
    apt-get install -y bash git python3 python3-pip python3.10-venv  \
    libgl1-mesa-glx libglib2.0-0

# Set the user to 'julian'
USER julian

# Specify the entrypoint
ENTRYPOINT ["/bin/bash", "-c"]

# Run the webui.sh script
CMD "python3 -m venv /app/venv"
CMD "./webui.sh"
CMD "bash"

