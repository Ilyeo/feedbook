$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "feedbook/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "feedbook"
  s.version     = Feedbook::VERSION
  s.authors     = ["Ilyeo"]
  s.email       = ["jrag.tkd@gmail.com"]
  s.homepage    = "https://magmalabs.io"
  s.summary     = "The Feedbook Engine"
  s.description = "Engine for perfomance management"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.6"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "pry-rails"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "shoulda-matchers"
  s.add_development_dependency "factory_bot_rails"
  s.add_development_dependency "rails-controller-testing"
  s.add_development_dependency "ancestry"
end
