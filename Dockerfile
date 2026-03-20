FROM registry.apexweaveapp.com:5000/apexweave-stack-ruby:3.2

# Layer 1: install deps — reruns only if Gemfile/lock changes
COPY Gemfile Gemfile.lock ./
RUN bundle install --jobs 4

# Layer 2: copy source
COPY . .

EXPOSE 3000
CMD ["sh", "/opt/apexweave/start.sh"]
