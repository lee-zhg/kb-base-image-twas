FROM ibmcom/websphere-traditional:latest-ubi

# put app and scripts and properties in /work/config
# put external library (e.g db driver) in /work/config/lib
# COPY --chown=was:root {$APPLICATION_BINARY} /work/config/{APPLICATION_BINARY}
COPY --chown=was:root ./src/config /work/config
COPY --chown=was:root ./lib /work/config/lib

#ENV PORT 9080
#EXPOSE 9080

#RUN /work/configure.sh
