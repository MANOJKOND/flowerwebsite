# Use Nginx as the base image
FROM nginx:latest

# Copy static website files to Nginx's default HTML folder
COPY . /usr/share/nginx/html

# Expose port 80 for the web server
EXPOSE 80
