FROM ruby:3.4.2

ENV RAILS_ENV=development

# Toolchain + Postgres headers + Node + pkg-config + git + certs
RUN apt-get update -y && apt-get install -y \
    build-essential libpq-dev nodejs pkg-config git ca-certificates \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Cache bundle layer
COPY Gemfile Gemfile.lock ./
# Fresh rubygems + bundler, then install
RUN gem update --system && gem install bundler && bundle install

# App code
COPY . .
EXPOSE 3000
CMD ["bash", "-lc", "bin/rails db:prepare && bin/rails s -b 0.0.0.0 -p 3000"]