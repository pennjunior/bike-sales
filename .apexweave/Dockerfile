FROM registry.apexweaveapp.com:5000/apexweave-stack-ruby:3.2

# Layer 1: install gems — reruns only if Gemfile/lock changes
# Gemfile* copies both Gemfile and Gemfile.lock (if present) so bundle respects pinned versions
COPY Gemfile* ./
RUN sh /opt/apexweave/build.sh

# Layer 2: copy source + compile assets
COPY . .
RUN if [ -f "bin/rails" ]; then RAILS_ENV=production SECRET_KEY_BASE=placeholder bundle exec rails assets:precompile 2>/dev/null || echo "[ApexWeave] WARNING: assets:precompile failed"; fi

EXPOSE 3000
CMD ["sh", "/opt/apexweave/start.sh"]
