#Image creration code

#This command means foundation of image is ubuntu
FROM ubuntu:latest

#It's environment variable of Dockerfile. This command says which package installer use and don't ask anything from user.
ENV DEBIAN_FRONTEND=noninteractive

#This command means build image
RUN apt-get update && apt-get install -y nginx


EXPOSE 80

#This command says, which command will execute when container will run.
CMD ["nginx", "-g", "daemon off;"]
