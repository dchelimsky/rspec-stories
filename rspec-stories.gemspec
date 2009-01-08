# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rspec-stories}
  s.version = "0.9.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["RSpec Development Team"]
  s.date = %q{2009-01-08}
  s.description = %q{Behaviour Driven Development for Ruby.}
  s.email = ["rspec-devel@rubyforge.org"]
  s.extra_rdoc_files = ["History.txt", "License.txt", "Manifest.txt", "README.txt"]
  s.files = ["History.txt", "License.txt", "Manifest.txt", "README.txt", "Rakefile", "init.rb", "lib", "lib/spec", "lib/spec/runner", "lib/spec/runner/formatter", "lib/spec/runner/formatter/story", "lib/spec/runner/formatter/story/html_formatter.rb", "lib/spec/runner/formatter/story/plain_text_formatter.rb", "lib/spec/runner/formatter/story/progress_bar_formatter.rb", "lib/spec/runner/options_extensions.rb", "lib/spec/stories.rb", "lib/spec/story", "lib/spec/story/extensions", "lib/spec/story/extensions.rb", "lib/spec/story/extensions/main.rb", "lib/spec/story/extensions/regexp.rb", "lib/spec/story/extensions/string.rb", "lib/spec/story/given_scenario.rb", "lib/spec/story/runner", "lib/spec/story/runner.rb", "lib/spec/story/runner/plain_text_story_runner.rb", "lib/spec/story/runner/scenario_collector.rb", "lib/spec/story/runner/scenario_runner.rb", "lib/spec/story/runner/story_mediator.rb", "lib/spec/story/runner/story_parser.rb", "lib/spec/story/runner/story_runner.rb", "lib/spec/story/scenario.rb", "lib/spec/story/step.rb", "lib/spec/story/step_group.rb", "lib/spec/story/step_mother.rb", "lib/spec/story/story.rb", "lib/spec/story/version.rb", "lib/spec/story/world.rb", "pkg", "resources", "resources/rake", "resources/rake/verify_rcov.rake", "rspec-stories.gemspec", "spec", "spec/README.jruby", "spec/rspec_suite.rb", "spec/ruby_forker.rb", "spec/spec", "spec/spec.opts", "spec/spec/runner", "spec/spec/runner/formatter", "spec/spec/runner/formatter/story", "spec/spec/runner/formatter/story/html_formatter_spec.rb", "spec/spec/runner/formatter/story/plain_text_formatter_spec.rb", "spec/spec/runner/formatter/story/progress_bar_formatter_spec.rb", "spec/spec/runner/most_recent_spec.rb", "spec/spec/runner/options_extensions_spec.rb", "spec/spec/runner/resources", "spec/spec/runner/resources/a_bar.rb", "spec/spec/runner/resources/a_foo.rb", "spec/spec/runner/resources/a_spec.rb", "spec/spec/runner/resources/custom_example_group_runner.rb", "spec/spec/runner/resources/utf8_encoded.rb", "spec/spec/runner_spec.rb", "spec/spec/spec_classes.rb", "spec/spec/story", "spec/spec/story/builders.rb", "spec/spec/story/extensions", "spec/spec/story/extensions/main_spec.rb", "spec/spec/story/extensions_spec.rb", "spec/spec/story/given_scenario_spec.rb", "spec/spec/story/runner", "spec/spec/story/runner/plain_text_story_runner_spec.rb", "spec/spec/story/runner/scenario_collector_spec.rb", "spec/spec/story/runner/scenario_runner_spec.rb", "spec/spec/story/runner/story_mediator_spec.rb", "spec/spec/story/runner/story_parser_spec.rb", "spec/spec/story/runner/story_runner_spec.rb", "spec/spec/story/runner_spec.rb", "spec/spec/story/scenario_spec.rb", "spec/spec/story/step_group_spec.rb", "spec/spec/story/step_mother_spec.rb", "spec/spec/story/step_spec.rb", "spec/spec/story/story_helper.rb", "spec/spec/story/story_spec.rb", "spec/spec/story/world_spec.rb", "spec/spec_helper.rb", "story_server", "story_server/prototype", "story_server/prototype/javascripts", "story_server/prototype/javascripts/builder.js", "story_server/prototype/javascripts/controls.js", "story_server/prototype/javascripts/dragdrop.js", "story_server/prototype/javascripts/effects.js", "story_server/prototype/javascripts/prototype.js", "story_server/prototype/javascripts/rspec.js", "story_server/prototype/javascripts/scriptaculous.js", "story_server/prototype/javascripts/slider.js", "story_server/prototype/javascripts/sound.js", "story_server/prototype/javascripts/unittest.js", "story_server/prototype/lib", "story_server/prototype/lib/server.rb", "story_server/prototype/stories.html", "story_server/prototype/stylesheets", "story_server/prototype/stylesheets/rspec.css", "story_server/prototype/stylesheets/test.css"]
  s.has_rdoc = true
  s.homepage = %q{http://rspec.info/}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{rspec-stories}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{rspec-stories 0.9.0.0}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rspec>, [">= 1.1.11"])
    else
      s.add_dependency(%q<rspec>, [">= 1.1.11"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.1.11"])
  end
end
