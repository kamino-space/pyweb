FROM continuumio/miniconda3:latest

WORKDIR /app

ADD env/sources.list /etc/apt/sources.list
ADD env/.condarc /root/.condarc
ADD docker/entrypoint.sh /app/docker/entrypoint.sh
ADD conf /app/conf

RUN \
    conda install -y uwsgi django mysqlclient &&\
    rm -rf /opt/conda/pkgs/* &&\
    rm -rf /root/.conda/pkgs/* &&\
    pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

CMD ["sh","docker/entrypoint.sh"]