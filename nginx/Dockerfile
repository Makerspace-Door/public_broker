FROM nginx
RUN mkdir -p /etc/nginx/stream.d/
RUN echo >> /etc/nginx/nginx.conf
RUN echo 'stream { include /etc/nginx/stream.d/*.conf ; }' >> /etc/nginx/nginx.conf
ADD default.conf /etc/nginx/conf.d/
ADD stream.conf /etc/nginx/stream.d/
RUN openssl req -x509 \
    -batch \
    -subj "/C=XX/ST=XX/O=XX/localityName=XX/commonName=example.com/organizationalUnitName=XX" \
    -newkey rsa:4096 -nodes -keyout /etc/ssl/private/key.pem \
    -out /etc/ssl/certs/cert.pem -days 36500
RUN ls -lad /etc/ssl/private/key.pem /etc/ssl/certs/cert.pem
