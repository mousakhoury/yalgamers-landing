# Stage 1: Build the application
FROM node:18 as build

RUN addgroup --gid 2002 yalgamer && \
        adduser --uid 1001 --gid 2002 --disabled-password --shell /bin/sh --gecos "" yalgamer

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and lock files to the container
COPY package.json ./

# Install dependencies
RUN npm install && \
    npm install -g vite

# Copy the rest of the application files to the container
COPY . .

RUN vite build && \
    vite optimize

# Copy the built application files from the build stage
# Switch to non-root user
RUN chown -R yalgamer:yalgamer /app

USER yalgamer:yalgamer

# Expose the application port
EXPOSE 8000

# Define the command to run the application
CMD ["vite", "--port=8000","--host=0.0.0.0"]
