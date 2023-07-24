FROM ghcr.io/briceburg/github-action-keybase-repo:d6e837b1b28c3d5289c6a66b4fafa445a8c88477
COPY clone-repo /usr/bin/
CMD ["clone-repo"]
