FROM ruby:3.1.2
RUN apt-get update -qq && apt-get install -y postgresql-client
RUN mkdir -p /backend
WORKDIR /backend
COPY ./Gemfile* /backend
RUN bundle install
COPY . /backend

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
