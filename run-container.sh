# Run the container with podman, passing environment variables as arguments
podman run -it --rm \
  --env-file env_variables.txt \
  quay.io/smiron/ansible-vmware-collection:latest
