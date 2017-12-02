# use a node base image
FROM node:7-onbuild

# set maintainer
LABEL maintainer "khansuhl@gmail.com"

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://ec2-34-210-123-117.us-west-2.compute.amazonaws.com:8000 || exit 1

# tell docker what port to expose
EXPOSE 8000
