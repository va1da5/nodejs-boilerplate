FROM node:12.16.0-alpine3.9

# Set a working directory
WORKDIR /usr/src/app

COPY package.json .

# Install Node.js dependencies
RUN npm install --production --no-progress

# Copy application files
COPY ./dist/ .

# Set permissions for "node" user
RUN chown -R node:node /usr/src/app
RUN chmod 755 /usr/src/app

# Run the container under "node" user by default
USER node

# Set NODE_ENV env variable to "production" for faster expressjs
ENV NODE_ENV production

CMD [ "node", "index.js" ]
