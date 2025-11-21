# Dockerfile — ONLY for app6 and app7 (NO extra config file!)
FROM nginx:alpine
LABEL app="TEST"

# Copy your HTML
COPY index.html /usr/share/nginx/html/index.html

# Tell Nginx to listen on 3000 instead of 80
ENV NGINX_PORT=3000

# Expose the new port
EXPOSE 3000
