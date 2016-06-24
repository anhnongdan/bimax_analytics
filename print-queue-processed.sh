#!/bin/sh
pm2 logs process | awk '/This worker/'  >> /tmp/queue_processed.log
