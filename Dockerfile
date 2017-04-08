FROM python:2.7

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        nodejs \
        npm \
    && rm -rf /var/lib/apt/lists/*

RUN npm install -g n \
    && n stable \
    && npm update -g npm \
    && ln -sf /usr/local/bin/node /usr/bin/node

RUN npm install -g serverless
