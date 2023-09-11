FROM node:14-alpine as build

ENV NODE_ENV=production

WORKDIR /plataforma-sabia/blog/

COPY ./package*.json /plataforma-sabia/blog/

RUN npm install

COPY ./ /plataforma-sabia/blog/

RUN npm run build

CMD ["npm", "run", "start"]
