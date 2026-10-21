# Use the official Ruby image
FROM ruby:3.2

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    nodejs \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /usr/src/app

# Copy Gemfile for dependencies. Gemfile.lock is gitignored, so bundler resolves it fresh.
COPY Gemfile ./

# Install gems
RUN gem install bundler:2.3.26 && bundle install

# Expose port for Jekyll server
EXPOSE 4000

# Default command to serve the site
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]