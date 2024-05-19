# frozen_string_literal: true

require_relative "lib/aws_sdk/cli/version"

Gem::Specification.new do |spec|
  spec.name = "aws-sdk-ruby-cli"
  spec.version = AwsSdk::CLI::VERSION
  spec.authors = ["okkez"]
  spec.email = ["okkez000@gmail.com"]

  spec.summary = "A simple command line tool wrapped aws-sdk-ruby"
  spec.description = ""
  spec.homepage = "https://github.com/okkez/aws-sdk-ruby-cli"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/okkez/aws-sdk-ruby-cli/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport"
  spec.add_dependency "dry-cli"
  spec.add_dependency "rexml"

  spec.add_development_dependency "aws-sdk-s3"
end
