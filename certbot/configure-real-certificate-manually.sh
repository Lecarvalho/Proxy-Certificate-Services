docker-compose run --rm --entrypoint "\
certbot certonly --webroot -w /var/www/certbot \
    --email __CERT_EMAIL__ \
    -d $1 \
    --rsa-key-size 4096 \
    --agree-tos \
    --force-renewal" certbot