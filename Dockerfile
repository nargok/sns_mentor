FROM ruby:2.5.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN gem install bundler
RUN mkdir /sns_mentor
WORKDIR /sns_mentor
COPY Gemfile /sns_mentor/Gemfile
COPY Gemfile.lock /sns_mentor/Gemfile.lock
RUN bundle install
COPY . /sns_mentor
