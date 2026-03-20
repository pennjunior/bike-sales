FROM registry.apexweaveapp.com:5000/apexweave-stack-ruby:3.2

# Alpine needs tzdata for Rails/tzinfo
RUN apk add --no-cache tzdata

# Layer 1: install deps — reruns only if Gemfile/lock changes
COPY Gemfile Gemfile.lock ./
RUN bundle lock --add-platform x86_64-linux-musl \
    && bundle install --jobs 4

# Layer 2: copy source
COPY . .

EXPOSE 3000
CMD ["sh", "/opt/apexweave/start.sh"]
