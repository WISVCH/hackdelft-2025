# build static website
FROM node:24-alpine AS builder
RUN mkdir /app && mkdir /app/data
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build
RUN npm prune --production

# Start the NGINX container.
FROM wisvch/nginx
COPY --from=builder /app/build /srv