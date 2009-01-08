require File.dirname(__FILE__) + '/../../spec_helper.rb'
require File.dirname(__FILE__) + '/resources/custom_example_group_runner'

describe Spec::Runner::OptionsExtensions do

  before(:each) do
    @out = StringIO.new
    @err = StringIO.new
    @parser = Spec::Runner::OptionParser.new(@err, @out)
  end

  def parse(args)
    @parser.parse(args)
    @parser.options
  end  

  it "should add a story_formatters method to the options" do
    parse([]).should respond_to(:story_formatters)
  end
    
  it "should use html story formatter when format is h" do
    options = parse(["--format", "h"])
    options.story_formatters[0].class.should equal(Spec::Runner::Formatter::Story::HtmlFormatter)
  end

  it "should use html story formatter when format is html" do
    options = parse(["--format", "html"])
    options.story_formatters[0].class.should equal(Spec::Runner::Formatter::Story::HtmlFormatter)
  end

end