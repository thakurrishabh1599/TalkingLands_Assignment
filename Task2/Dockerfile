#use a lightweight Node.js image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy only server.js (no package.json)
COPY server.js .

# Install Express manually inside the container
RUN npm install express

# Expose port 3000
EXPOSE 3000

# Start the server
CMD ["node", "server.js"]
