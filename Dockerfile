FROM node:7-alpine

MAINTAINER 1256573276@qq.com

COPY ./ /home/work/code

WORKDIR /home/work/code

RUN npm i
RUN npm run build

CMD npm start

EXPOSE 3000
