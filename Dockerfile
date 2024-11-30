# Stage 1: Build the application
FROM node:18-alpine AS builder

# Set the working directory
WORKDIR /src/app

# Copy package.json and package-lock.json
COPY package.json package-lock.json ./

# Install only production dependencies first for efficiency
RUN npm install

# Copy the rest of the application source code
COPY . .

# Build the Next.js app
RUN npm run build
