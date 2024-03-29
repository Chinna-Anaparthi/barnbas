# Use an official Node runtime as a base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /EC2

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install 

# Copy the application code into the container
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Define the command to run your app
ENTRYPOINT npm run start