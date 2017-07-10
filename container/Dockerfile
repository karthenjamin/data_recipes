FROM continuumio/anaconda3

RUN useradd --create-home --home-dir /home/condauser --shell /bin/bash condauser

COPY . /home/condauser/tutorials/

RUN /home/condauser/tutorials/installation.sh

RUN rm /home/condauser/tutorials/Dockerfile

RUN rm /home/condauser/tutorials/installation.sh

#USER condauser

ENV HOME=/home/condauser
ENV SHELL=/bin/bash
#ENV USER=condauser
WORKDIR /home/condauser/tutorials

CMD ["./jupyter.sh"]

EXPOSE 8888

RUN echo 'PS1="condauser: \W \$ "' >> ~/.bashrc