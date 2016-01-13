# Includes buildpack-deps:jessie (Debian with Tools)
FROM python:2-onbuild

MAINTAINER Matteo De Paoli <depaoli@>

#
# Flask App
#
ADD FlaskAppServer /FlaskAppServer
WORKDIR /FlaskAppServer
EXPOSE 2105

# To be ran inside the container to download a PyApp from GitHub or wherever
RUN pip install git+https://github.com/depaoli/FlaskAppSample.git

CMD [ "bash", "bin/run.sh" ]
