lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "test_goose/version"

Gem::Specification.new do |spec|
  spec.name          = "test_goose"
  spec.version       = TestGooseGem::VERSION
  spec.authors       = ["Merrin"]
  spec.email         = ["merrin.macleod@gmail.com"]

  spec.summary       = %q{Honks when your RSpec tests fail.}
  spec.description   = %q{A RSpec plugin that honks when your RSpec tests fail.}
  spec.homepage      = "https://github.com/mermop/test_goose"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/mermop/test_goose"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_runtime_dependency "rspec", "~> 3.9.0"
  spec.add_runtime_dependency "honkhonk", "~> 0.0.1"
end
