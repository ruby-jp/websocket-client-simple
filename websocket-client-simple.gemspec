lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'websocket-client-simple/version'

Gem::Specification.new do |spec|
  spec.name          = "websocket-client-simple"
  spec.version       = WebSocket::Client::Simple::VERSION
  spec.authors       = ["Sho Hashimoto", "Yusuke Nakamura"]
  spec.email         = ["hashimoto@shokai.org", "yusuke1994525@gmail.com"]
  spec.description   = %q{Simple WebSocket Client for Ruby}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/ruby-jp/websocket-client-simple"
  spec.license       = "MIT"
  spec.required_ruby_version = '>= 2.6.9'

  if spec.respond_to?(:metadata)
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = spec.homepage
    spec.metadata["changelog_uri"] = "https://github.com/ruby-jp/websocket-client-simple/blob/master/History.txt"
  end

  spec.post_install_message = "The development of this gem has moved to #{spec.homepage}."

  spec.files         = `git ls-files`.split($/).reject{|f| f == "Gemfile.lock" }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "websocket-eventmachine-server"
  spec.add_development_dependency "eventmachine"

  spec.add_dependency "websocket"
  spec.add_dependency "event_emitter"
end
