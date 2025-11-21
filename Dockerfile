# Dockerfile — FINAL VERSION for app6 & app7 (NO extra file!)
FROM nginx:alpine
LABEL app="TEST"

# Copy your React index.html
COPY index.html /usr/share/nginx/html/index.html

# Listen on port 3000 (instead of 80)
ENV NGINX_PORT=3000
EXPOSE 3000

# THIS SINGLE LINE FIXES React Router / SPA routing – no .conf file needed!
RUN echo 'server { \
    listen 3000; \
    location / { \
        root /usr/share/nginx/html; \
        try_files $uri $uri/ /index.html; \
    } \
}' > /etc/nginx/conf.d/default.conf
