FROM alpine:3.9.4
RUN apk add openssh git
RUN mkdir -p ~/.ssh
RUN ssh-keyscan github.com >> ~/.ssh/known_hosts
RUN git config --global user.email "gitsync@example.com"
RUN git config --global user.name "GitSync"
ADD push.sh /bin/push.sh
WORKDIR /gitsync/worktree
CMD push.sh
