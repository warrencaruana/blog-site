FROM node:13

WORKDIR /usr/src/app

COPY package.json .

RUN yarn global add gatsby-cli

RUN yarn install

# COPY gatsby-config.js .

# RUN gatsby -v
RUN gatsby build

FROM gatsbyjs/gatsby:onbuild as build
# COPY public /pub

CMD gatsby develop --host 0.0.0.0


# EXPOSE 80

# CMD ["gatsby", "develop", "-H", "0.0.0.0"]