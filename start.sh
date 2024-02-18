#!/bin/ash
rm -rf /home/container/tmp/*

echo "⟳ Starting PHP-FPM..."
/usr/sbin/php8.2-fpm --fpm-config /home/container/php-fpm/php-fpm.conf --daemonize

echo "⟳ Starting Nginx..."
echo "✓ Successfully started"
/usr/sbin/nginx -c /home/container/nginx/nginx.conf -p /home/container/
