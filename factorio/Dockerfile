FROM ofsm/ofsm:latest

# Stash the pristine /opt from the base image so we can copy it onto the empty volume on first boot
RUN mkdir -p /opt.image && cp -a /opt/. /opt.image/

# Copy a tiny entrypoint that seeds the volume once, then execs the original CMD
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
# Keep original CMD from base image (do not override)
