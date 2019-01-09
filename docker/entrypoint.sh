#!/bin/sh
/opt/conda/envs/isdut/bin/uwsgi --chdir /app/www/isdut.cn/isdut --wsgi-file isdut/wsgi.py --socket 0.0.0.0:9090