
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "devcamp_view_tool_2/version"

Gem::Specification.new do |spec|
  spec.name          = "devcamp_view_tool_2"
  spec.version       = DevcampViewTool2::VERSION
  spec.authors       = ["taka yone"]
  spec.email         = ["tkhtynd1991@gmail.com"]

  spec.summary       = %q{various view specific mehods}
  spec.description   = %q{provided generated HTML data}
  spec.homepage      = "https://github.com/takayone/devcamp_view_tool_2"


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
end
