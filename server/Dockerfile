# TO TYPE AFTER A NEW CHANGE
# docker build --tag tiny_house_image .
# docker run --name tiny_house_container tiny_house_image

# add a server
FROM node:latest
COPY . /code
WORKDIR /code
RUN npm i express
CMD node /code/index.js
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
# FROM node:latest
# COPY . /code
# WORKDIR /code
# RUN npm i express node-fetch
# CMD node /code/index2.js
# docker run --name tiny_house_container -p 1337:80 tiny_house_image 
# http://localhost:1337/

