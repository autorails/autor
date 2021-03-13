# frozen_string_literal: true

require_relative "lib/autor/version"

Gem::Specification.new do |spec|
  spec.name          = "autor"
  spec.version       = Autor::VERSION
  spec.authors       = ["Patryk Ptasinski"]
  spec.email         = ["patryk@ipepe.pl"]

  spec.summary       = "collection of tools to automate dev processes in rails"
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/autorails/autor"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  s.metadata["allowed_push_host"] = "https://rubygems.org/"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
