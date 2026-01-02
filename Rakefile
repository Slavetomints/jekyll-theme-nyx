# frozen_string_literal: true

require "rake"
require "fileutils"
require_relative "lib/jekyll/theme/nyx/version"

GEM_NAME  = "jekyll-theme-nyx"
VERSION   = Jekyll::Theme::Nyx::VERSION
GEM_FILE  = "#{GEM_NAME}-#{VERSION}.gem"
VERSION_FILE = "lib/jekyll/theme/nyx/version.rb"

def ensure_clean_git!
  unless `git status --porcelain`.strip.empty?
    abort "[-] Git working tree is dirty. Commit or stash changes first."
  end
end

def bump_version!(type)
  parts = VERSION.split(".").map(&:to_i)

  case type
  when :patch
    parts[2] += 1
  when :minor
    parts[1] += 1
    parts[2] = 0
  when :major
    parts[0] += 1
    parts[1] = parts[2] = 0
  end

  new_version = parts.join(".")

  content = File.read(VERSION_FILE)
  content.gsub!(/VERSION\s*=\s*".*?"/, %(VERSION = "#{new_version}"))
  File.write(VERSION_FILE, content)

  puts "[+] Version bumped to #{new_version}"
end

desc "Build dummy site to verify theme"
task :site do
  sh "bundle install"
  sh "bundle exec jekyll build"

  puts "[+] Dummy site builds successfully"
end

desc "Build the gem"
task :build do
  sh "gem build #{GEM_NAME}.gemspec"
end

desc "Push gem to RubyGems"
task :push do
  sh "gem push #{GEM_FILE}"
end

desc "Create and push git tag"
task :tag do
  sh "git tag v#{VERSION}"
  sh "git push origin v#{VERSION}"
end

namespace :bump do
  desc "Bump patch version"
  task :patch do
    ensure_clean_git!
    bump_version!(:patch)
    sh "git add #{VERSION_FILE}"
    sh "git commit -m 'Bump version to #{Jekyll::Theme::Nyx::VERSION}'"
  end

  desc "Bump minor version"
  task :minor do
    ensure_clean_git!
    bump_version!(:minor)
    sh "git add #{VERSION_FILE}"
    sh "git commit -m 'Bump version to #{Jekyll::Theme::Nyx::VERSION}'"
  end

  desc "Bump major version"
  task :major do
    ensure_clean_git!
    bump_version!(:major)
    sh "git add #{VERSION_FILE}"
    sh "git commit -m 'Bump version to #{Jekyll::Theme::Nyx::VERSION}'"
  end
end

desc "Full release: site build, gem build, push, tag"
task release: [:site] do
  ensure_clean_git!
  sh "rake build"
  sh "rake push"
  sh "rake tag"
  puts "[+] Released #{GEM_NAME} v#{VERSION}"
end
