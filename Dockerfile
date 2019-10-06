FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /Tarea1_rails
WORKDIR /Tarea1_rails
COPY Gemfile /Tarea1_rails/Gemfile
COPY Gemfile.lock /Tarea1_rails/Gemfile.lock
RUN bundle install
COPY . /Tarea1_rails

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]