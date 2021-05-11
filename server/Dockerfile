# TO TYPE AFTER A NEW CHANGE
# docker build --tag tiny_house_image .
# docker run --name tiny_house_container tiny_house_image

# in alpine house // base    
# FROM alpine:latest      
# speak loudly  // final action 
# CMD echo "hello ssense" 

# try to fetch google page
# FROM alpine:latest
# take the newspapper behind the door
# CMD curl google.com

# but you cant because you didnt install curl lib. So building the plan is ok but then you cant totally run over it.
# you cant open the door if you didnt install it first
# FROM alpine:latest
# install door
# RUN apk add curl
# CMD curl google.com

# let's use ping to keep the door opened and lets go inside the house
# FROM alpine:latest
# RUN apk add curl iputils
# CMD ping google.com
# docker exec -it tiny_house_container sh  

# add a file
# FROM alpine:latest
# RUN apk add curl iputils
# RUN touch /example-file
# CMD ping google.com
# docker exec -it tiny_house_container sh   then ls

# add a directory
# FROM alpine:latest
# COPY . /code
# CMD cat /code/index.js
#console.log('hello world', 1 + 2)

# run node 
# FROM node:latest
# COPY . /code
# CMD node /code/index.js


# add a server
# FROM node:latest
# COPY . /code
# WORKDIR /code
# RUN npm i express
# CMD node /code/index.js
# you wont manage to call it from outside the container
# docker exec -it tiny_house_container sh   then curl localhost and you see the time

# expose port
# FROM node:latest
# COPY . /code
# WORKDIR /code
# RUN npm i express
# CMD node /code/index.js
# docker run --name tiny_house_container -p 1337:80 tiny_house_image 
# http://localhost:1337/



# expose port
FROM node:latest
COPY . /code
WORKDIR /code
RUN npm i express node-fetch
CMD node /code/index2.js
# docker run --name tiny_house_container -p 1337:80 tiny_house_image 
# http://localhost:1337/

