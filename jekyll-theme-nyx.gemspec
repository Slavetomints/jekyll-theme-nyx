# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = 'jekyll-theme-nyx'
  spec.version = '0.3.2'
  spec.authors = ['Slavetomints']
  spec.email = ['me@slavetomints.com']

  spec.summary = 'Simple Dark Mode Oriented Jekyll Theme'
  spec.description = <<~DESC
    Nyx is a dark mode based Jekyll theme focused on readability,
    clean typography, and simple blogging.
  DESC
  spec.homepage = 'https://github.com/Slavetomints/jekyll-theme-nyx'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 3.1.0'

  spec.metadata['rubygems_mfa_required'] = 'true'
  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = "#{spec.homepage}/blob/main/CHANGELOG.md"
  spec.metadata['bug_tracker_uri'] = "#{spec.homepage}/issues"
  spec.metadata['documentation_uri'] = "#{spec.homepage}#readme"
  spec.metadata['theme'] = 'true'
  spec.metadata['jekyll_theme'] = 'true'

  spec.add_dependency 'jekyll', '~> 4.0'

  spec.cert_chain  = ['certs/slavetomints.pem']
  spec.signing_key = File.expand_path('~/.ssh/gem-private_key.pem') if $0 =~ /gem\z/

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).select do |f|
      # Only include files that actually exist
      File.file?(File.join(__dir__, f))
    end
  end

  spec.require_paths = ['lib']
end
