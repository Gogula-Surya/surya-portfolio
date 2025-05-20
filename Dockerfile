# Use the official Nginx image from DockerHub
FROM nginx:alpine

# Remove the default nginx index page
RUN rm -rf /usr/share/nginx/html/*

# Copy all your portfolio files into the nginx web root
COPY . /usr/share/nginx/html

# Expose port 80 (used by Render)
EXPOSE 80

# Start nginx (default command)
CMD ["nginx", "-g", "daemon off;"]
