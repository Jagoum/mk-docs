# use the official pthon image as a base image
FROM nginx AS builder
#FROM python:3.9-slim AS builder

#the working directory is /app

WORKDIR /app
#Upgrade the system
RUN apt update

#Installing depencies
RUN apt install  mkdocs -y && \
    apt install  mkdocs-bootstrap -y

#copy te orihect files into the container
COPY . .

# build the project
RUN mkdocs build

FROM nginx:alpine

#copy project build code to nginx server
COPY --from=builder /app/site /usr/share/nginx/html

