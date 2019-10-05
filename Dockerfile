FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /Tarea1
WORKDIR /Tarea1
COPY Gemfile /Tarea1/Gemfile
COPY Gemfile.lock /Tarea1/Gemfile.lock
RUN bundle install
COPY . /Tarea1

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]