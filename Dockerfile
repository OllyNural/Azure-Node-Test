FROM node:11-alpine

WORKDIR /usr/src/app

# Setup Build and Expose Ports
# ARG lets us parameterise the PORT as an input at build stage
ARG PORT=3000
ENV PORT=${PORT}

EXPOSE ${PORT}

# Setup Build environment
ARG NODE_ENV_ARG=production
ENV NODE_ENV=${NODE_ENV_ARG}

# Install (or copy) Dependencies
# COPY ./node_modules ./node_modules
RUN npm install express

# Copy Application over
COPY server.js ./

CMD ["node", "server.js"]