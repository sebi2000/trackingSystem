#!/bin/sh
mongodump --uri="mongodb://frontdesk-db:27017/usersdb" --gzip --archive > /backup/dump_`date "+%Y-%m-%d"`.gz