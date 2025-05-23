# Generated by https://smithery.ai. See: https://smithery.ai/docs/config#dockerfile
FROM node:lts-alpine
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install --production

# Copy project files
COPY . .

# Build the project
RUN npm run build

# Expose the port (default 3000)
EXPOSE 3000

# Start the server
CMD [ "npm", "start" ]
