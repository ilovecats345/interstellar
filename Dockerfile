# Use the official Node.js 20 image
FROM node:20

# Install git
RUN apt-get update && apt-get install -y git

# Clone the Interstellar repository
RUN git clone https://github.com/InterstellarNetwork/Interstellar

# Set the working directory to the Interstellar directory
WORKDIR /Interstellar

# Install dependencies
RUN npm install

# Start the application
CMD ["npm", "start"]
