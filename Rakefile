require "bundler/gem_tasks"
require File.expand_path('../lib/cequel/devise/version', __FILE__)

task :default => :release
task :release => [
  :build,
  :tag,
  :update_stable,
  :push,
  :cleanup
]

desc 'Build gem'
task :build do
  system 'gem build orm_adapter-cequel.gemspec'
end

desc 'Create git release tag'
task :tag do
  system "git tag -a -m 'Version #{Cequel::Devise::VERSION}' #{Cequel::Devise::VERSION}"
  system "git push origin #{Cequel::Devise::VERSION}:#{Cequel::Devise::VERSION}"
end

desc 'Update stable branch on GitHub'
task :update_stable do
  if Cequel::Devise::VERSION =~ /^(\d+\.)+\d+$/ # Don't push for prerelease
    system "git push -f origin HEAD:stable"
  end
end

desc 'Push gem to repository'
task :push do
  system "gem push orm_adapter-cequel-#{Cequel::Devise::VERSION}.gem"
end

task 'Remove packaged gems'
task :cleanup do
  system "rm -v *.gem"
end
