FROM ghcr.io/linuxserver/baseimage-guacgui

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="aptalca"

ENV APPNAME="rmlint" UMASK_SET="022"

RUN \
 echo "**** install rmlint ****" && \
	apt-add-repository ppa:jd-team/jdownloader && \
	apt-get update && \
	apt-get install jdownloader-installer && \
 echo "**** cleanup ****" && \
 apt-get clean && \
 rm -rf \
	/tmp/* \
	/var/lib/apt/lists/* \
	/var/tmp/*

# add local files
COPY root/ /
