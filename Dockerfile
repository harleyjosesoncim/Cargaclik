FROM ruby:3.0.6

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs yarn

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

RUN bundle exec rails assets:precompile

EXPOSE 3000

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]

