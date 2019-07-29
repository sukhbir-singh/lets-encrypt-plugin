$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "lets_encrypts/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "lets_encrypts"
  s.version     = LetsEncrypt::VERSION
  s.authors     = ["Sukhbir Singh"]
  s.email       = ["sukhbir947@gmail.com"]
  s.homepage    = "http://www.amahi.org/apps/lets_encrypts"
  s.license     = "AGPLv3"
  s.summary     = %{Your plugin does this and that.}
  s.description = %{This is an Amahi 12 platform plugin required for generating certificates to establish secure connection with subdomains of yourhda.com}

  s.files = Dir["{app,config,db,lib}/**/*"] + ["LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.12"
  s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
