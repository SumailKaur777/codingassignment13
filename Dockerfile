# Use official Node.js image as base
FROM node:14-alpine as builder

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy project files
COPY . .

# Build production app
RUN npm run build

# Production environment
FROM nginx:alpine

# Copy build files to nginx public directory
COPY --from=builder /app/build /usr/share/nginx/html

# Expose port 8018
EXPOSE 8018

# Command to run nginx
CMD ["nginx", "-g", "daemon off;"]
