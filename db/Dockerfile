# TO TYPE AFTER A NEW CHANGE
# docker build --tag swimming_pool_image .
# docker run --name swimming_pool_container swimming_pool_image 

# expose port
FROM node:latest
COPY . /code
WORKDIR /code
RUN npm i express
CMD node /code/index.js
# docker run --name swimming_pool_container -p 3306:3306 swimming_pool_image