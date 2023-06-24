#!/usr/bin/env bash
python3 /App/Objects_recognition/manage.py migrate > /App/log_migrate-$(date +"%Y_%m_%d_%T").log
python3 /App/Objects_recognition/manage.py collectstatic --noinput > /App/log_collect_static-$(date +"%Y_%m_%d_%T").log
env >> /etc/environment
cd Objects_recognition && /App/Objects_recognition/asgi.sh
