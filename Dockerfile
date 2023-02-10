FROM node:12.11.1-alpine

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

# add node packages to optimize caching
ADD package.json package-lock.json $APP_HOME/
RUN npm install

# add app directory
ADD . $APP_HOME

ENV LIVESITE_PORT 3000
EXPOSE 3000