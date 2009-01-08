= RSpec Story Runner

* http://rspec.info
* http://rubyforge.org/projects/rspec-stories
* http://github.com/dchelimsky/rspec/wikis
* mailto:rspec-devel@rubyforge.org

== DESCRIPTION:

This is the RSpec Story Runner (formerly RBehave) extracted from RSpec. We extracted it because Cucumber (http://github.com/aslakhellesoy/cucumber) is the new Story Runner, so we don't plan to maintain the original Story Runner any longer, but we don't want to force you to migrate to Cucumber in order to upgrade RSpec (which will no longer ship with the Story Runner).

Many thanks to Chad Humphries for extracting this out from RSpec and untangling a few dependencies so this could stand on its own as a gem.

== INSTALL:

  [sudo] gem install dchelimsky-rspec-stories

 or

  git clone git://github.com/dchelimsky/rspec-stories.git
  cd rspec-stories
  rake gem
  rake install_gem
