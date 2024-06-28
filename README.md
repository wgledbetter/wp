# WP: WordPress Experimentation

## Backup and Restore

1. `docker-compose up`
2. Go to `localhost:8080` in your web browser
3. Set up WordPress and change some stuff
4. Ctrl+C in the `docker-compose up` terminal
5. `./backup-db.sh && ./backup-wp.sh`
   - Creates `backup-db.tar` and `backup-wp.tar`
6. `docker volume rm wp_db wp_wordpress`
   - Removes volumes containing your setup and configurations
7. `docker-compose up`
   - Notice that everything is reset
8. Ctrl+C
9. `./restore-db.sh && ./restore-wp.sh`
10. `docker-compose up`
    - Notice that everything is back to how you configured it
