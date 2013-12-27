# Provide a simple gemspec so you can easily use your enginex
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = "whoops_rails_logger"
  s.authors = ["Daniel Higginbotham"]
  s.summary = "A Whoops Logger for Rails 3 apps."
  s.description = "A Whoops Logger for Rails 3 apps."
  s.files = Dir["{app,lib,config}/**/*"] + ["MIT-LICENSE", "Rakefile", "Gemfile", "README.asciidoc"]
  s.version = "0.1.16"

  s.add_dependency("whoops_logger", "0.1.4")
  s.add_dependency('rails', '>3', "<5")

  s.add_development_dependency('rake', '0.8.7')
  s.add_development_dependency('rspec-rails')
  if RUBY_VERSION < "1.9"
    s.add_development_dependency('ruby-debug')
  else
    s.add_development_dependency('ruby-debug19')
  end
  s.add_development_dependency('fakeweb')
  s.add_development_dependency('sqlite3')
  s.add_development_dependency("capybara", ">=0.4.0")
end
