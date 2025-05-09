# Use the base image Node.js
FROM node:14

# Define Working Directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install Dependencies
RUN npm install

# Copy rest of the app file
COPY . .

# Expose the port on which app will run
EXPOSE 3000

# Run the application
CMD ["npm", "start"]
