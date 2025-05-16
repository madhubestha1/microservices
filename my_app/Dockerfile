# Use an official Node.js runtime as a parent image
FROM node:16-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json into the container
COPY package*.json ./

# Install any needed dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Make the container listen on port 3000
EXPOSE 3000

# Run the application
CMD ["npm", "start"]
