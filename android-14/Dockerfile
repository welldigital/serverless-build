# Use cimg/android:2024.01.1-node as the base image
FROM cimg/android:2024.01.1-node

# Update the package lists
RUN sudo apt-get update

RUN sudo apt-get install libyaml-dev

# Install Ruby 3.3.0
RUN curl "https://cache.ruby-lang.org/pub/ruby/3.3/ruby-3.3.0.tar.gz" -o "ruby-3.3.0.tar.gz"
RUN tar -xvzf ruby-3.3.0.tar.gz
RUN cd ruby-3.3.0 && ./configure && make && sudo make install

# Install Bundler
RUN gem install bundler

# Install Fastlane
RUN sudo gem install fastlane

RUN sudo apt update
RUN sudo apt install openjdk-17-jdk
