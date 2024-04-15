# Use the official lightweight Node.js 16 image
FROM node:21-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to work directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all local files to the image
COPY ./src .

# Expose port 3000
EXPOSE 3000

# Command to run the application
CMD [ "node", "app.js" ]
