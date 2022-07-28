#!/bin/bash
find "/srv/acsgw/logs/" -type f -mtime +7 -delete
