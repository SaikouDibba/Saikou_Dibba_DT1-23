# Use an official Node.js runtime as a parent image
FROM node:14


# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Bundle your app source
COPY . .

# Expose port 8080
EXPOSE 8080

# Define the command to run your app
CMD ["npm", "start"]





