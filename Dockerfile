# Use a Node.js base image
FROM node:18-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the application uses
EXPOSE 8080

# Command to run the application
CMD [ "npm", "start" ]
