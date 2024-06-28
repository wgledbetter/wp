#!/bin/sh
docker run --rm --volumes-from wp-wordpress-1 -v $(pwd):/backup ubuntu bash -c "rm -rf /var/www/html/* && cd / && tar xvf /backup/backup-wp.tar"
