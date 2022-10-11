FROM gitpod/workspace-full-vnc

RUN sudo apt update && \
    sudo apt install -y language-pack-zh-hans ttf-wqy-zenhei fonts-wqy-microhei && \
    sudo apt install -y build-essential libnss3 libsecret-1-dev python rsync && \
    sudo update-locale LANG=zh_CN.UTF-8 LANGUAGE && \
    . /etc/default/locale

ENV LANG zh_CN.UTF-8
