FROM node:8 AS base

RUN mkdir -p /app && npm config set strict-ssl false
COPY ["package.json", "/app/"]
WORKDIR /app

RUN  npm install

COPY . .

# ---- Test and Package----
FROM base AS package

CMD 'npm run test'



