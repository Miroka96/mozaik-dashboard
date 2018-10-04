FROM node

# Create app directory
WORKDIR /usr/src/app

COPY . .

RUN npm install
RUN npm run build-assets

ENV PORT=8080
EXPOSE 8080

# reduce logging
ENV NPM_CONFIG_LOGLEVEL info

CMD ["node", "app.js"]