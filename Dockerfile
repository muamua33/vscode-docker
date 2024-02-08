FROM python

RUN wget -O 'get-docker.sh' 'https://get.docker.com' && \
    sh ./get-docker.sh && \
    rm get-docker.sh && \
    wget -O 'vscode_cli.tar.gz' 'https://code.visualstudio.com/sha/download?build=stable&os=cli-alpine-x64' && \
    tar -xf vscode_cli.tar.gz -C /usr/local/bin/ && \
    rm vscode_cli.tar.gz

CMD [ "code", "tunnel", "--accept-server-license-terms", "--name", "debian" ]
