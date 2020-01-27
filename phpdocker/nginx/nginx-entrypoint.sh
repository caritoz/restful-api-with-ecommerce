#!/bin/sh

set -e

cat <<EOF >/etc/nginx/conf.d/default.conf
server {
    listen 80 default;

    client_max_body_size 108M;

    access_log /var/log/nginx/src.access.log;

    server_name ${SERVER_NAME} www.${SERVER_NAME};

    root /src/public;
    index index.php;

    if (!-e \$request_filename) {
        rewrite ^.*\$ /index.php last;
    }

    location ~ \.php\$ {
        fastcgi_pass ${DOCKER_PHP_SERVICE}:${DOCKER_PHP_SERVICE_PORT};
        fastcgi_index index.php;
        fastcgi_param SCRIPT_FILENAME \$document_root\$fastcgi_script_name;
        fastcgi_param PHP_VALUE "error_log=/var/log/nginx/src_php_errors.log";
        fastcgi_buffers 16 16k;
        fastcgi_buffer_size 32k;
        include fastcgi_params;
    }
    
}
EOF

# Run nginx
nginx -g "daemon off;"