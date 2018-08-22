FROM ubuntu:16.04
MAINTAINER Peter Naudus <uselinux@gmail.com>

# 
RUN apt-get -qy update
RUN apt-get -qy install python3 python3-dev python3-pip apache2 apache2-dev libev-dev gcc wrk

# install servers
RUN pip3 install cherrypy tornado uwsgi gunicorn bjoern meinheld mod_wsgi aiohttp
RUN mkdir -p /home/www
COPY src /home/www/wsgi_benchmark
RUN chown -R www-data:www-data /home/www/wsgi_benchmark
