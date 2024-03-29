# restful-api-with-ecommerce
RESTful Api Development with Ecommerce Project

This site depends on the Laravel framework

## Requirements
* [Docker](https://docs.docker.com/)
* [Composer](http://getcomposer.org)
* [Git](http://git-scm.com)
* [PHP >= 7](http://php.net)
* [Laravel 6 Support](https://laravel.com/docs/6.x)
* PHP Extensions:
    - tidy, soap, gd, fileinfo

#### Usage
1. Clone the project repo and checkout to development branch

    $ git clone https://github.com/caritoz/restful-api-with-ecommerce.git
    
    $ cd restful-api-with-ecommerce        
    

2. To start a development environment for the first time, run


    $ sudo docker-compose up -d --build
    
### Configuration

1. Add "127.0.0.1 {{HOST}}" to your hosts file
2. Access http://{{HOST}}/
3. Environments API for file .env

```dockerfile
DOCKER_PHP_SERVICE=php-fpm
DOCKER_PHP_SERVICE_PORT=9000
DOCKER_DATABASE_SERVICE=database

SERVER_NAME=product-rest-api.local

```php

#set up app
APPLICATION_ID={{APPLICATION_ID}}
APP_NAME=RestFulAPI
APP_ENV=local
APP_KEY={{APP_KEY}}
APP_DEBUG=true
APP_URL=http://localhost
ENABLE_DEBUGGING=true
ENABLE_MEMCACHED=true
DEBUG_IP_LIST={{DEBUG_IP_LIST}}

# set up server email
SMTP_HOST={{SMTP_HOST}}
SMTP_PORT={{SMTP_PORT}}
SMTP_AUTH={{SMTP_AUTH}}
SMTP_USERNAME={{SMTP_USERNAME}}
SMTP_PASSWORD={{SMTP_PASSWORD}}

#set up database
DATABASE_HOST={{DATABASE_HOST}}
DATABASE_PORT={{DATABASE_PORT}}
DATABASE_NAME={{DATABASE_NAME}}
DATABASE_USERNAME={{DATABASE_USERNAME}}
DATABASE_PASSWORD={{DATABASE_PASSWORD}}

# set up others
LOG_CHANNEL=stack

BROADCAST_DRIVER=log
CACHE_DRIVER=file
QUEUE_CONNECTION=sync
SESSION_DRIVER=cookie
SESSION_LIFETIME=120

REDIS_HOST=127.0.0.1
REDIS_PASSWORD=null
REDIS_PORT=6379

AWS_ACCESS_KEY_ID=
AWS_SECRET_ACCESS_KEY=
AWS_DEFAULT_REGION=us-east-1
AWS_BUCKET=

PUSHER_APP_ID=
PUSHER_APP_KEY=
PUSHER_APP_SECRET=
PUSHER_APP_CLUSTER=mt1

MIX_PUSHER_APP_KEY="${PUSHER_APP_KEY}"
MIX_PUSHER_APP_CLUSTER="${PUSHER_APP_CLUSTER}"

```

## Contributions
Contributions are welcome! Please create a pull request with your changes.

[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/carolagordillo)

## License

This project is licensed under the [GNU General Public License v3.0](https://github.com/caritoz/cms-notificacions/blob/main/LICENSE).
