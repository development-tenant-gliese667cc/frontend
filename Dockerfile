FROM ghcr.io/development-tenant-gliese581d/frontend:v0.0.3
WORKDIR /app
COPY . .
#RUN npm ci --prefer-offline --only=production --silent
RUN npm run build
ENV NODE_ENV production
EXPOSE 3000
CMD [ "npm", "run", "start" ]
