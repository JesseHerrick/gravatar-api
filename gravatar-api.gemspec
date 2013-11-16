lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gravatar-api/version'

Gem::Specification.new do |spec|
  spec.name          = "gravatar-api"
  spec.version       = VERSION
  spec.authors       = ["Jesse Herrick"]
  spec.email         = ["jessegrantherrick@gmail.com"]
  spec.description   = %q{Easy, object oriented Gravatar API access.}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/JesseHerrick/jekyll-ftp"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency('colorize')

  spec.add_development_dependency('bundler')
  spec.add_development_dependency('rake')
end