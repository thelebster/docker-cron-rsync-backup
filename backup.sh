#!/bin/sh

rsync -avzh --info=progress2 -e 'ssh -p22 -i /.ssh/private -o StrictHostKeychecking=no' $SOURCE_DIR $SFTP_SERVER:$DESTINATION_DIR > /proc/1/fd/1
