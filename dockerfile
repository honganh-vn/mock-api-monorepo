# Use a Node.js base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json (if it exists)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port graphql-faker runs on
EXPOSE 9002

# Define the command to run the mock API
CMD ["npm", "run", "mock:api"]