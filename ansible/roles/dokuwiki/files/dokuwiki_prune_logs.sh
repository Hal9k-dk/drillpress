#!/bin/bash
find "/srv/dokuwiki/logs/" -type f -mmin +1440 -delete
