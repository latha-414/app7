# Dockerfile — ONLY for app6 and app7
FROM nginx:alpine
LABEL app="TEST"
COPY index.html /usr/share/nginx/html/index.html

# Change this line from 80 → 3000
EXPOSE 3000

# Tell nginx to listen on 3000 instead of 80
COPY nginx-3000.conf /etc/nginx/conf.d/default.conf
