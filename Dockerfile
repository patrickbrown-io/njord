FROM node:14.19.1

WORKDIR /app

RUN [ "chown", "-R", "node:node", "/app" ]

USER node

##########
## builder
# FROM base as builder

# Copy
COPY config config
COPY database database
COPY src src
COPY public public
COPY .env .env
COPY package.json package.json
COPY yarn.lock yarn.lock

# TO DO - fix
RUN npm install --arch=x64 --platform=linux --ignore-scripts=false --verbose

CMD yarn dev