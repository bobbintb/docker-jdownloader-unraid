FROM ghcr.io/linuxserver/baseimage-guacgui

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="aptalca"

ENV APPNAME="rmlint" UMASK_SET="022"

RUN \
 echo "**** install rmlint ****" 

# add local files
COPY root/ /
