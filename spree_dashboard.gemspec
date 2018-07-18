# encoding: UTF-8
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'spree_dashboard/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_dashboard'
  s.version     = SpreeDashboard.version
  s.summary     = 'Sales dashboard for Spree.'
  s.description = 'Dashboard for Spree e-commerce engine. Spree Dashboard'\
                  ' helps e-store owners to easily track their sales, stock'\
                  ' and costs by visualising data in charts.'
  s.required_ruby_version = '>= 2.2.7'

  s.authors     = ['Mykolas Grinevicius', 'Jokubas Pucinskas']
  s.email       = ['mykolas@grineviciai.eu', 'j.pucinskas@gmail.com']
  s.homepage    = 'https://github.com/jm-core/spree_dashboard'
  s.license = 'MIT'

  s.require_path = 'lib'
  s.requirements << 'none'

  spree_version = '>= 3.1.0', '< 4.0'
  s.add_dependency 'spree_core', spree_version
  s.add_dependency 'spree_backend', spree_version
  s.add_dependency 'spree_extension'

  s.add_development_dependency 'appraisal'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'capybara-screenshot'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_bot'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'mysql2'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'pg', '~> 0.18'
  s.add_development_dependency 'simplecov'
end
