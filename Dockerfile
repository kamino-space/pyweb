FROM continuumio/miniconda3:latest

WORKDIR /app

ADD sources.list /etc/apt/sources.list
ADD .condarc /root/.condarc
ADD entrypoint.sh /app/docker/entrypoint.sh

RUN \
    conda install -y uwsgi django &&\
    rm -rf /opt/conda/pkgs/* &&\
    rm -rf /root/.conda/pkgs/*

CMD ["sh", "docker/entrypoint.sh"]