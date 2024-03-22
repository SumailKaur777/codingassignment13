# Use the official Node.js 14 image as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Build the production build of the React app
RUN npm run build

# Expose port 8018
EXPOSE 8018

# Command to run the app
CMD ["npm", "start"]
