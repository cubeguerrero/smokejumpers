FROM ruby:2.6.2-slim

MAINTAINER cuthbert.guerrero@gmail.com

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]

RUN apt-get update && apt-get install -y build-essential libmariadb-dev
RUN gem install bundler -v 2.1.4

WORKDIR /code
COPY Gemfile Gemfile.lock /code/
RUN bundle install

COPY . .