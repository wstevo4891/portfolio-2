FROM ruby:2.3.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

# Node.js
RUN curl -sL https://deb.nodesource.com/setup_9.x | bash - \
&& apt-get install -y nodejs

# Install yarn
RUN apt-get update && apt-get install -y curl apt-transport-https wget && \
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
apt-get update && apt-get install -y yarn

RUN mkdir /portfolio
WORKDIR /portfolio

ADD Gemfile /portfolio/Gemfile
ADD Gemfile.lock /portfolio/Gemfile.lock

RUN bundle install

ADD . /portfolio
