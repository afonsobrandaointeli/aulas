# Use a base image with Node.js
FROM node:20.12

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 1337

# Command to start the application
CMD ["sails", "lift"]
