FROM node:alpine

# Define working directory
WORKDIR /app

# Copy jason file and install dependenties
COPY ./package.json .
RUN npm install 

# Copy the rest of files
COPY . . 

# Expose the container port
EXPOSE 3000

CMD ["npm", "start"]
