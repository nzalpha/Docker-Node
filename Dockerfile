FROM node:14
ARG SRC_DIR=/opt/i27
# Which will be inside the container
RUN mkdir -p $SRC_DIR
# Set the Working Directory  inside the container
WORKDIR $SRC_DIR

# Copy the Current Contnet to /opt/i27 directory , this is our home dir 
COPY . $SRC_DIR

# Install nodejs dependencies 
RUN npm install 

# Expose the port 
EXPOSE 3000

CMD ["npm", "run", "start:dev"]
