# backend/Dockerfile
FROM node:20-alpine

 # Set working directory
 WORKDIR /app

# Copy package files first to leverage Docker caching
 COPY package*.json ./

 # Install dependencies
 RUN npm install

# Copy the rest of your app
 COPY . .

 # Expose port dynamically using Render's PORT env variable
 EXPOSE 10000

 # Optional: use dotenv if a .env file exists
# Render automatically injects env vars, so dotenv will pick them up
# Make sure server.js uses process.env.PORT, etc.
 CMD ["npm", "start"]

