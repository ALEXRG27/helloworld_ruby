# Dockerfile
FROM ruby:latest

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy Gemfile and Gemfile.lock into the container
COPY Gemfile Gemfile.lock ./

# Install dependencies
RUN bundle install

# Copy the rest of the application code into the container
COPY . .

# Expose port 81
EXPOSE 81

# Specify the command to run your application
CMD ["ruby", "app.rb"]
