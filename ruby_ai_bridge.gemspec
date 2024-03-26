# frozen_string_literal: true

require_relative "lib/ruby_ai_bridge/version"

Gem::Specification.new do |spec|
  spec.name = "ruby_ai_bridge"
  spec.version = RubyAiBridge::VERSION
  spec.authors = ["Adif Sgaid"]
  spec.email = ["69080239+adifsgaid@users.noreply.github.com"]

  spec.summary = "A Ruby gem for seamless integration with various AI APIs over WebSockets and HTTP."
  spec.description = "ruby_ai_bridge provides a unified interface to interact with multiple AI APIs using both WebSocket for real-time data streaming and standard HTTP calls. Designed for ease of use, extensibility, and performance."
  spec.homepage = "https://github.com/adifsgaid/ruby_ai_bridge"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/adifsgaid/ruby_ai_bridge"
  spec.metadata["changelog_uri"] = "https://github.com/adifsgaid/ruby_ai_bridge/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]


  spec.add_dependency "faraday", "~> 1.0"                             # HTTP client
  spec.add_dependency "faye-websocket", "~> 0.10.0"                   # WebSocket client

  # Development dependencies
  spec.add_development_dependency "bundler", "~> 2.0"                # Dependency manager
  spec.add_development_dependency "rake", "~> 13.0"                  # Task runner
  spec.add_development_dependency "rspec", "~> 3.10"                 # Testing framework
  spec.add_development_dependency "rubocop", "~> 1.0"                # Linter
  spec.add_development_dependency "yard", "~> 0.9.25"                # Documentation generator
end
