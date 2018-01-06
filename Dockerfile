FROM arm64v8/ubuntu:18.04

MAINTAINER Peter Becich <peterbecich@gmail.com>

ARG GHC_VERSION=8.2.2

# https://github.com/commercialhaskell/stack/blob/master/etc/dockerfiles/stack-build/lts-10.0/Dockerfile
# https://github.com/peterbecich/stack/blob/arm64/etc/dockerfiles/stack-build/lts-10.0/Dockerfile

# https://stackoverflow.com/a/9168577/1007926
COPY ghc_bootstrap.sh /usr/local/bin/ghc_bootstrap.sh

RUN /usr/local/bin/ghc_bootstrap.sh

CMD ghc --version

