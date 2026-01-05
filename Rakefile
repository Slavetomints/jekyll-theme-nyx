# frozen_string_literal: true

require "rake"
require "fileutils"

GEMSPEC = "jekyll-theme-nyx.gemspec"

# Helper to get current version from gemspec
def current_version
  File.read(GEMSPEC)[/spec\.version\s*=\s*["'](.*?)["']/, 1]
end

GEM_NAME = GEMSPEC.sub(/\.gemspec$/, "")
GEM_FILE = "#{GEM_NAME}-#{current_version}.gem"

desc "Build dummy site to verify theme"
task :site do
  sh "bundle install"
  sh "bundle exec jekyll build"
  puts "[+] Dummy site builds successfully"
end

desc "Build the gem"
task :build do
  sh "gem build #{GEMSPEC}"
  puts "[+] Built #{GEM_FILE}"
end

desc "Push gem to RubyGems"
task :push do
  sh "gem push #{GEM_FILE}"
end

desc "Create and push git tag"
task :tag do
  sh "git tag v#{current_version}"
  sh "git push origin v#{current_version}"
end

desc "Full release: site build, gem build, push, tag"
task release: [:site] do
  sh "rake build"
  sh "rake push"
  sh "rake tag"
  puts "[+] Released #{GEM_NAME} v#{current_version}"
end
