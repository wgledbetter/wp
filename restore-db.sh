#!/bin/sh
docker run --rm --volumes-from wp-db-1 -v $(pwd):/backup ubuntu bash -c "rm -rf /var/lib/mysql/* && cd / && tar xvf /backup/backup-db.tar"
