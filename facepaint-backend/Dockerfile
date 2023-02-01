FROM ruby:2.6.1

WORKDIR  /app

RUN gem install bundler
RUN gem install rails

COPY Gemfile .
COPY Gemfile.lock .
RUN bundle install

COPY . .

CMD rails s -e production -b 0.0.0.0
