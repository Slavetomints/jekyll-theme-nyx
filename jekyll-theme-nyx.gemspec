# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "jekyll-theme-nyx"
  spec.version = "0.1.1"
  spec.authors = ["Slavetomints"]
  spec.email = ["me@slavetomints.com"]

  spec.summary = "Simple Jekyll Theme"
  spec.homepage = "https://github.com/Slavetomints/jekyll-theme-nyx"  
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1.0"

  spec.metadata["rubygems_mfa_required"] = "true"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/main/CHANGELOG.md"
  
  spec.add_runtime_dependency "jekyll", "~> 4.0"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
  ls.readlines("\x0", chomp: true).select do |f|
    # Only include files that actually exist
    File.file?(File.join(__dir__, f))
  end
end


  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
