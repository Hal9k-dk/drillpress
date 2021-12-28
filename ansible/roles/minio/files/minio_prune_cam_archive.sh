#!/bin/bash
find "/srv/minio/hal9kcam/" -type f -mtime +7 -delete
