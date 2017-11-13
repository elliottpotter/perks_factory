set :application, "perks_factory"
set :repo_url, "TODO"

# Project-specific overrides go here.
# For list of variables that can be customized, see:
# https://github.com/mattbrictson/capistrano-mb/blob/master/lib/capistrano/tasks/defaults.rake

fetch(:mb_recipes) << "sidekiq"
fetch(:mb_aptitude_packages)["redis-server@ppa:chris-lea/redis-server"] = :redis

set :mb_dotenv_keys, %w(
  rails_secret_key_base
  redis_url
  sidekiq_web_username
  sidekiq_web_password
)

  # postmark_api_key was in the above list

after "deploy:published", "bundler:clean"
