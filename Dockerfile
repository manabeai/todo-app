FROM ruby:3.3.4
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs vim
RUN mkdir /todo-app
WORKDIR /todo-app
ADD Gemfile /todo-app/Gemfile
ADD Gemfile.lock /todo-app/Gemfile.lock
RUN bundle install
# RUN rails new . --force --database=postgresql --javascript=importmap --asset-pipeline=propshaft
# RUN ./bin/bundle install
# RUN ./bin/bundle add dartsass-rails
# RUN ./bin/bundle install
# RUN ./bin/rails dartsass:install
# RUN ./bin/importmap pin popperjs bootstrap

# ADD . /todo-app