# Use a Node.js base image
FROM node:alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package.json package-lock.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the project files
COPY . .

# Expose the port the server will run on
EXPOSE 3000

# Start the server
CMD ["node", "server.js"]