FROM debian:latest

RUN apt-get update
RUN apt-get -y install ca-certificates
RUN apt-get -y install emacs-nox

RUN useradd --create-home elastic

ENV HOME /home/elastic
WORKDIR /home/elastic
USER elastic

COPY --chown=elastic:elastic setup-es-mode.el $HOME/
RUN /usr/bin/emacs --script setup-es-mode.el
COPY --chown=elastic:elastic .emacs $HOME/
COPY --chown=elastic:elastic sample.es $HOME/
CMD /usr/bin/emacs --reverse --debug-init sample.es
