FROM ruby:alpine

RUN apk update && apk upgrade
RUN apk add ruby-dev build-base
RUN rm -rf /var/cache/apk/*

RUN gem install eventmachine --no-rdoc --no-ri

COPY fake-elasticache /usr/local/bin/

EXPOSE 11211
ENTRYPOINT ["fake-elasticache"]
