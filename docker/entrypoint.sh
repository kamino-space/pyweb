#!/bin/sh
/opt/conda/bin/uwsgi --chdir /app/www/isdut.cn/isdut --wsgi-file isdut/wsgi.py --socket 172.18.5.5:9090