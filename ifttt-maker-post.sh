#!/bin/bash
# Args:
# $1 - event name
# $2 - JSON payload from Docker Hub
# Env vars:
# $IFTTT_MAKER_KEY

POST_URL=https://maker.ifttt.com/trigger/$1/with/key/$IFTTT_MAKER_KEY
