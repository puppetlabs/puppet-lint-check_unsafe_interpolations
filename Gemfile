source ENV['GEM_SOURCE'] || 'https://rubygems.org'

gemspec


group :development do
  gem 'json'

  gem 'pry'
  gem 'pry-byebug'
  gem 'pry-stack_explorer'

  gem 'rake', '~> 10.0'
  gem 'rspec', '~> 3.1'
  gem 'rspec-collection_matchers', '~> 1.0'
  gem 'rspec-its', '~> 1.0'
  gem 'rspec-json_expectations', '~> 2.2'
end

group :release do
  gem 'faraday-retry', '~> 2.0.0', require: false
  gem 'github_changelog_generator', require: false
end

group :coverage, optional: ENV['COVERAGE']!='yes' do
  gem 'simplecov-console', :require => false
  gem 'simplecov', :require => false
end

group :rubocop do
  gem 'rubocop', '~> 1.6.1', require: false
  gem 'rubocop-performance', '~> 1.9.1', require: false
  gem 'rubocop-rspec', '~> 2.0.1', require: false
end

