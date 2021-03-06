FROM google/cloud-sdk:299.0.0-alpine
RUN /google-cloud-sdk/bin/gcloud components install beta --quiet

# Clean up
RUN rm -rf ./google-cloud-sdk/.install

ADD drone-gdm.linux.amd64 /bin/drone-gdm
ENTRYPOINT ["/bin/drone-gdm"]
