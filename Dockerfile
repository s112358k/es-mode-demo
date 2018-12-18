FROM debian:latest

RUN apt-get update && apt-get -y install ca-certificates emacs-nox jq
RUN useradd --create-home elastic
ENV HOME /home/elastic
WORKDIR /home/elastic
USER elastic

ADD --chown=elastic:elastic setup-es-mode.el $HOME/
RUN /usr/bin/emacs --script setup-es-mode.el
ADD --chown=elastic:elastic .emacs $HOME/
ADD --chown=elastic:elastic sample.es $HOME/
ADD --chown=elastic:elastic sample.org $HOME/
CMD /usr/bin/emacs --reverse sample.es
