#28th sep 2023
FROM ubuntu:23.10
RUN apt-get update -y && \
         apt-get install -y nginx
CMD ["nginx", "-g", "daemon off;"]
COPY index.html /home/ubuntu
ADD https://dlcdn.apache.org/maven/maven-3/3.9.4/source/apache-maven-3.9.4-src.tar.gz /home/ubuntu
