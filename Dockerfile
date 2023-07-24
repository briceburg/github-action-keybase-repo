FROM ghcr.io/briceburg/github-action-keybase-repo:b7444d858f924fe1df337cfba50d86da7a825ca2
COPY clone-repo /usr/bin/
CMD ["clone-repo"]
