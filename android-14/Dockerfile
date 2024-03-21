FROM cimg/android:2024.01.1-node

# Install unzip and Python build tools to be able to install the AWS CLI tools.
RUN sudo apt-get update

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