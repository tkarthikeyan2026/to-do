# Use a lightweight Node image
FROM node:18-alpine

# Create app directory
WORKDIR /app

# Copy all files into the container
COPY . .

# Install a static file server globally
RUN npm install -g http-server

# Expose the port http-server runs on
EXPOSE 8080

# Run the server
CMD ["http-server", ".", "-p", "8080"]

