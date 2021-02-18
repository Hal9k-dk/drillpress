#!/bin/bash
for i in {1..5}; do
    find "/home/camera/cam$i" -type f -mtime +7 -delete
done
