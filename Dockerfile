FROM python:3.12-slim

ARG AWSEBCLI_VERSION=3.27.3

RUN apt-get update \
    && apt-get install -y --no-install-recommends git make zip \
    && python -m pip install --no-cache-dir --upgrade "awsebcli==${AWSEBCLI_VERSION}" \
    && eb --version \
    && rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
