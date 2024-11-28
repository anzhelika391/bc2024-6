# Dockerfile

# Specify the base image
 FROM node:18

# Set the working directory
 WORKDIR /app

# Copy application files
 COPY package.json package-lock.json ./

# Install dependencies
 RUN npm install

RUN npm install -g nodemon && npm install --legacy-peer-deps

COPY . .
# Expose the required port
 EXPOSE 3000

# Specify the default command
 CMD ["node", "--inspect", "index.js", "-h", "0.0.0.0", "-p", "3000", "-c", "/app/cache"]
 перевір