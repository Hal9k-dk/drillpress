#!/bin/bash
find "/srv/dokuwiki/logs/" -type f -mtime +1 -delete
