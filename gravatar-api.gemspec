lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gravatar-api/version'

Gem::Specification.new do |spec|
  spec.name          = "gravatar-api"
  spec.version       = VERSION
  spec.authors       = ["Jesse Herrick"]
  spec.email         = ["jessegrantherrick@gmail.com"]
  spec.description   = %q{A library for easy, object oriented Gravatar API access.}
  spec.summary       = %q{Easily access the Gravatar API in an object oriented way.}
  spec.homepage      = "https://github.com/JesseHerrick/gravatar-api"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.require_paths = ["lib"]

  spec.add_development_dependency('bundler')
  spec.add_development_dependency('rake')
  spec.add_development_dependency('colorize')
end