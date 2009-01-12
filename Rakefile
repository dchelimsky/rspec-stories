# -*- ruby -*-

$:.unshift(File.join(File.dirname(__FILE__), 'lib'))
require 'rubygems'
require 'hoe'
require 'spec/story/version'
require 'spec/rake/spectask'

class Hoe
  def extra_deps
    @extra_deps.reject! { |x| Array(x).first == 'hoe' }
    @extra_deps
  end
end

Hoe.new('rspec-stories', Spec::Story::VERSION::STRING) do |p|
  p.summary = Spec::Story::VERSION::SUMMARY
  p.url = 'http://rspec.info/'
  p.description = "Behaviour Driven Development for Ruby."
  p.rubyforge_name = 'rspec-stories'
  p.developer('RSpec Development Team', 'rspec-devel@rubyforge.org')
  p.extra_deps = [["rspec",">= 1.1.11"]]
  p.remote_rdoc_dir = "rspec-stories/#{Spec::Story::VERSION::STRING}"
end

['audit','test','test_deps','default','post_blog'].each do |task|
  Rake.application.instance_variable_get('@tasks').delete(task)
end

task :verify_rcov => :spec
task :default => :verify_rcov

load File.dirname(__FILE__) + '/resources/rake/verify_rcov.rake'

desc "Run all specs"
Spec::Rake::SpecTask.new do |t|
  t.spec_files = FileList['spec/**/*_spec.rb']
  t.spec_opts = ['--options', 'spec/spec.opts']
  unless ENV['NO_RCOV']
    t.rcov = true
    t.rcov_dir = 'coverage'
    t.rcov_opts = ['--exclude', "lib/spec.rb,lib/spec/runner.rb,spec\/spec,bin\/spec,examples,\/gems,\/Library\/Ruby,\.autotest,#{ENV['GEM_HOME']}"]
  end
end

def egrep(pattern)
  Dir['**/*.rb'].each do |fn|
    count = 0
    open(fn) do |f|
      while line = f.gets
        count += 1
        if line =~ pattern
          puts "#{fn}:#{count}:#{line}"
        end
      end
    end
  end
end

desc "Look for TODO and FIXME tags in the code"
task :todo do
  egrep /(FIXME|TODO|TBD)/
end

desc "verify_committed, verify_rcov, post_news, release"
task :complete_release => [:verify_committed, :verify_rcov, :post_news, :release]

desc "Verifies that there is no uncommitted code"
task :verify_committed do
  IO.popen('git status') do |io|
    io.each_line do |line|
      raise "\n!!! Do a git commit first !!!\n\n" if line =~ /^#\s*modified:/
    end
  end
end

namespace :update do
  desc "update the manfest"
  task :manifest do
    system %q[touch Manifest.txt; rake check_manifest | grep -v "(in " | patch]
  end
  
  desc "update the gemspec"
  task :gemspec do
    system %q[rake debug_gem | grep -v "(in " | grep -v "s.add_dependency(%q<hoe" > `basename \\`pwd\\``.gemspec]
  end
end
