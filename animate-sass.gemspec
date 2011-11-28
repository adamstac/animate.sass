require './lib/animate-sass'

Gem::Specification.new do |s|
  # Release information
  s.version = AnimateSass::VERSION
  s.date = AnimateSass::DATE

  # Gem author details
  s.name = "animate-sass"
  s.summary = %q{Sass and Compass CSS animation library for WebKit, Firefox and beyond, based on Animate.css} # one-liner
  s.description = %q{Animate.sass is a Sass and Compass CSS animation library for WebKit, Firefox and beyond based on the work being done in Animate.css} # long-form
  s.authors = ["Adam Stacoviak"]
  s.email = ["adam@stacoviak.com"]
  s.homepage = "https://github.com/adamstac/animate.sass"

  # Gem files
  # These are the files that get distributated in the gem
  s.files = ["README.mdown"]
  s.files += Dir.glob("lib/**/*.*")
  s.files += Dir.glob("stylesheets/**/*.*")
  # s.files += Dir.glob("templates/**/*.*")

  # Gem bookkeeping
  s.required_rubygems_version = ">= 1.3.6"
  s.rubygems_version = %q{1.3.6}
  # Adding a dependency for Compass ensures we also install Sass
  s.add_dependency("compass", [">= 0.11.5"])
end