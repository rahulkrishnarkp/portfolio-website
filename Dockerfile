# Use a lightweight Nginx image for serving the static page
FROM nginx:alpine

# Copy all project files to Nginx default web directory
COPY . /usr/share/nginx/html

# Expose the website at port 80
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]

