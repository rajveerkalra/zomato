# Use official Node.js image (already includes corepack from v16.10+)
FROM node:18

# Enable Corepack (needed for Yarn v4+)
RUN corepack enable

# Set working directory
WORKDIR /app

# Copy package.json and yarn.lock
COPY package.json yarn.lock ./

# Install dependencies using the version defined in package.json
RUN yarn install

# Copy the rest of the app
COPY . .

# Expose the port
EXPOSE 3000

# Run the app
CMD ["yarn", "start"]
