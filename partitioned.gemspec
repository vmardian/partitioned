$LOAD_PATH.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "partitioned/version"

Gem::Specification.new do |s|
  s.name           = 'partitioned'
  s.version        = Partitioned::VERSION
  s.license        = 'New BSD License'
  s.date           = '2013-04-29'
  s.summary        = "Postgres table partitioning support for ActiveRecord."
  s.description    = "A gem providing support for table partitioning in ActiveRecord. Support is available for postgres and AWS RedShift databases. Other features include child table management (creation and deletion) and bulk data creating and updating."
  s.authors        = ["Keith Gabryelski", "Aleksandr Dembskiy", "Edward Slavich"]
  s.email          = 'keith@fiksu.com'
  s.files          = `git ls-files`.split("\n")
  s.test_files     = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path   = 'lib'
  s.homepage       = 'http://github.com/fiksu/partitioned'

  s.add_development_dependency "jquery-rails"

  s.add_dependency 'pg'
  s.add_dependency 'rails', '>= 3.2.8'
  s.add_dependency 'rspec-rails'
  s.add_dependency 'bulk_data_methods', '1.0.0'
  s.add_dependency 'activerecord-redshift-adapter'
end
