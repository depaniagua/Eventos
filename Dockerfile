FROM seapy/ruby:2.2.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /Eventos
WORKDIR /Eventos
COPY Gemfile /Eventos/Gemfile
COPY Gemfile.lock /Eventos/Gemfile.lock
RUN bundle install
COPY . /Eventos
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]

#Startup commands
ENTRYPOINT ["bundle", "exec"]
CMD bundle exec rake db:create db:migrate assets:precompile