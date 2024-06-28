#!/bin/sh
docker run --rm --volumes-from wp-wordpress-1 -v $(pwd):/backup ubuntu tar cvf /backup/backup-wp.tar /var/www/html
