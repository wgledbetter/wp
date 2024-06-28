#!/bin/sh
docker run --rm --volumes-from wp-db-1 -v $(pwd):/backup ubuntu tar cvf /backup/backup-db.tar /var/www/html
