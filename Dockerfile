FROM harisekhon/ubuntu-dev

LABEL MAINTAINER="coljiangchao@gmail.com"

# 更新软件包列表并安装必要的包
RUN apt update && apt install -y build-essential python3-dev libasound2-dev wget
RUN apt update && apt install -y build-essential python3-dev libasound2-dev wget
RUN cd /tmp &&\
    wget https://github.com/Kuingsmile/clash-core/releases/download/1.18/clash-linux-amd64-v3-v1.18.0.gz &&\
    gzip -d clash-linux-amd64-v3-v1.18.0.gz &&\
    chmod -x clash-linux-amd64-v3-v1.18.0 \
COPY  config_rule.yaml /tmp

WORKDIR /tmp

ENTRYPOINT ["clash-linux-amd64-v3-v1.18.0"]