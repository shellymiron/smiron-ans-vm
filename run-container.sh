# Build the Docker image
docker build -t quay.io/smiron/ansible-vmware-collection:latest .

# Run the container with podman, passing environment variables as arguments
podman run -d --name container_name quay.io/smiron/ansible-vmware-collection:latest arg1 arg2 arg3

