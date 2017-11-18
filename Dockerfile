# use a node base image
FROM node:7-onbuild

# set maintainer
LABEL maintainer "khansuhl@gmail.com"

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://52.32.25.62:8000 || exit 1

##########################
RUN apt-get update 
RUN apt-get install -y nginx
RUN service nginx start

CMD [“echo”,”Image created successfully”] 
##############################

# tell docker what port to expose
EXPOSE 8000
