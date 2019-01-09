FROM continuumio/miniconda3:latest

WORKDIR /app

ADD env/sources.list /etc/apt/sources.list
ADD env/.condarc /root/.condarc
ADD docker/entrypoint.sh /app/docker/entrypoint.sh
ADD conf /app/conf

RUN \
    /opt/conda/bin/conda install -y django mysqlclient &&\
    rm -rf /opt/conda/pkgs/* &&\
    rm -rf /root/.conda/pkgs/* &&\
    pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple &&\
    pip install -y uwsgi

CMD ["sh","docker/entrypoint.sh"]