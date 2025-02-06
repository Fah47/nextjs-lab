# Use official Node.js image as a base
FROM node:16-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy the rest of the application
COPY . .

# Build the Next.js app
RUN npm run build

# Expose the port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
