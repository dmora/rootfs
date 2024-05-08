# Use an Alpine image as the intermediate base
FROM alpine as builder

# Copy project files
COPY . /rootfs

# Remove any .git folders, .DS_Store, .github/, .gitignore, and the Dockerfile to avoid including them in the build
RUN rm -rf /rootfs/.git /rootfs/Dockerfile /rootfs/.DS_Store /rootfs/.github /rootfs/.gitignore

# Change the owner of all files to root
RUN chown -R root:root /rootfs

# Build the final image from scratch
FROM scratch

# Copy the prepared filesystem with all files owned by root directly
COPY --from=builder /rootfs /

# Additional commands for setting up your container can be added here
