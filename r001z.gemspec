
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "r001z/version"

Gem::Specification.new do |spec|
  spec.name          = "r001z"
  spec.version       = R001z::VERSION
  spec.authors       = ["Mike Ward"]
  spec.email         = ["michaelward773@gmail.com"]

  spec.summary       = %q{Rebuilding-rails-Mike-Ward}
  spec.description   = %q{Build a framework for Ruby that simulates a lighter version of rails - beginner project}
  spec.homepage      = "https://github.com/Mike-773/Rebuilding-rails-Mike-Ward/blob/main/README.md"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_runtime_dependency "rack", "~> 2.0.7"
end
