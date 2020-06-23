FROM ruby:2.6.0

WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y nodejs && \
    git clone https://github.com/docker-hy/rails-example-project . && bundle install && rails db:migrate

CMD ["rails","s"]
