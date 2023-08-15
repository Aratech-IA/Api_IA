#!/usr/bin/env bash
python3 /App/Api_IA/manage.py migrate > /App/log_migrate-$(date +"%Y_%m_%d_%T").log
python3 /App/Api_IA/manage.py collectstatic --noinput > /App/log_collect_static-$(date +"%Y_%m_%d_%T").log
env >> /etc/environment
cd Api_iA && /App/Api_IA/asgi.sh
