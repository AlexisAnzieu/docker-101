# docker build -t first_image .
# docker run --name first_container first_image 

# FROM alpine:latest     // in alpine house // base         
# CMD echo "hello world" // speak loudly  // final action 

# try to fetch google page
# FROM alpine:latest // in this house
# CMD curl google.com // take the newspapper behind the door

# but you cant because you didnt install curl lib. So building the plan is ok but then you cant totally run over it.
# you cant open the door if you didnt install it first
# FROM alpine:latest // on this house
# RUN apk add curl // install door
# CMD curl google.com // take the newspapper behind the door

# let's use ping to keep the door opened and lets go inside the house
# FROM alpine:latest
# RUN apk add curl iputils
# CMD ping google.com
# docker exec -it first_container sh  

# add a file
# FROM alpine:latest
# RUN apk add curl iputils
# RUN touch /example-file
# CMD ping google.com
# docker exec -it first_container sh   then ls

# add a directory
# FROM alpine:latest
# COPY app /code
# CMD cat /code/index.js
#console.log('hello world')

# run node 
# FROM node:latest
# COPY app /code
# CMD node /code/index.js
# hello world





# add a server
# FROM node:latest
# COPY server /code
# WORKDIR /code
# RUN npm i express
# CMD node /code/index.js
# you wont manage to call it from outside the container
# docker exec -it first_container sh   then curl localhost and you see the time

# expose port
# FROM node:latest
# COPY server /code
# WORKDIR /code
# RUN npm i express
# CMD node /code/index.js
# docker run --name first_container -p 1337:80 first_image 
# http://localhost:1337/


