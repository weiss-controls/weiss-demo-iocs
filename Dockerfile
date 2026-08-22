FROM mambaorg/micromamba:2.9-alpine3.21

ARG IOC_DIR

WORKDIR /app

COPY --chown=$MAMBA_USER:$MAMBA_USER ${IOC_DIR}/ ./
COPY --chown=$MAMBA_USER:$MAMBA_USER .condarc /home/$MAMBA_USER/.condarc

RUN micromamba install -y -n base -f environment.yaml && \
    micromamba clean -afy

ARG MAMBA_DOCKERFILE_ACTIVATE=1

ENTRYPOINT ["/usr/local/bin/_entrypoint.sh", "iocsh", "st.cmd"]
