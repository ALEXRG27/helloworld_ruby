# Dockerfile
FROM ruby:latest

WORKDIR /usr/src/app

COPY app.rb .

EXPOSE 81

CMD ["ruby", "app.rb"]
