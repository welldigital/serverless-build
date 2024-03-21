FROM cimg/android:2024.01.1-node

RUN apt-get update && apt-get install -y curl git build-essential

# Install ruby-build
RUN git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

# Set the desired Ruby version as an environment variable
ENV RUBY_VERSION 3.3.0

# Install the specific Ruby version
RUN rbenv install $RUBY_VERSION
RUN rbenv global $RUBY_VERSION

# Set the PATH to include ruby-build and ruby shims
ENV PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"

# Install your application gems
RUN gem install bundler && bundle config --global frozen 1