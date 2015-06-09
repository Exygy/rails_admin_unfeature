$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_unfeature/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_unfeature"
  s.version     = RailsAdminUnfeature::VERSION
  s.authors     = ["Dave Kaplan"]
  s.email       = ["dave@exygy.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of RailsAdminUnfeature."
  s.description = "TODO: Description of RailsAdminUnfeature."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", ">= 4.0.2"
end
