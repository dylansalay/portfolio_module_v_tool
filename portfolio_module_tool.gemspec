lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "portfolio_module_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "portfolio_module_tool"
  spec.version       = PortfolioModuleTool::VERSION
  spec.authors       = ["Dylan Salay"]
  spec.email         = [""]

  spec.summary       = %q{Various view specific methods for applications I use}
  spec.description   = %q{Provides generated HTML data for rails applications.}
  spec.homepage      = ""

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "'rspec'", "~> "
end