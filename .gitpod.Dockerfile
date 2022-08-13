FROM gitpod/workspace-full-vnc

RUN sudo apt update && \
    sudo apt install -y language-pack-zh-hans ttf-wqy-zenhei fonts-wqy-microhei && \
    sudo update-locale LANG=zh_CN.UTF-8 LANGUAGE && \
    source /etc/default/locale

ENV LANG zh_CN.UTF-8