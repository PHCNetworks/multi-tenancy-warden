$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "cdgsubengine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
	s.name        = "cdgsubengine"
	s.version     = Cdgsubengine::VERSION
	s.authors     = ["BradPotts"]
	s.email       = ["brad@coastdigitalgroup.com"]
	s.homepage    = "http://coastdigitalgroup.com"
	s.summary     = "CoastDigitalGroup subengine warden edition gem adds a simple multi-tenancy functionality to any rails project."
	s.description = "CoastDigitalGroup subengine warden edition gem adds a simple multi-tenancy functionality to any rails project. The warden edition is a multi-tenancy login engine at it's most basic level. Features basic authentication and subdomain data scoping and login pages at the subdomain level."
	s.license     = "MIT"


	s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  # Main Files and Security
	s.add_dependency 'rails', '>= 4.2.3'
	s.add_dependency 'bcrypt', '~>3.1.10'
	s.add_dependency 'warden', '~> 1.2.3'
  
	# Database and Data Seperization
	s.add_dependency 'pg', '~>0.18.0', '>= 0.18.2'
	s.add_dependency "houser", "1.0.2"

	# User and UI Elements
	s.add_dependency 'gravtastic', '~> 3.2.6'
  
	# On its way out
	s.add_dependency 'braintree', '2.40.0'
	s.add_dependency 'dynamic_form', '1.1.4'

	# Development
	s.add_development_dependency "rspec-rails", "3.0.1"
	s.add_development_dependency "capybara", "2.3.0"
	s.add_development_dependency "factory_girl", "4.4.0"
	s.add_development_dependency "database_cleaner", "1.3.0"
	s.add_development_dependency "coveralls"

end
