# rsync backup service

Allows to run rsync as a separate backup service via cron.

Copy `example.env` to `.env`.

```
cp example.env .env
```

* `HOST_SOURCE_DIR=/home/user/files` — path on the host machine that need to be backed up.
* `SFTP_SERVER=user@server`
* `DESTINATION_DIR=backup` - path on remote server.
* `SOURCE_DIR=/files` - path to docker volume.
* `SSH_KEY_PATH=/root/.ssh/private` - path to ssh key.

```
chmod +x docker-start-daemon.sh

./docker-start-daemon.sh
```
