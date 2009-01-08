require 'spec/runner/options'

module Spec
  module Runner
    module OptionsExtensions

      STORY_FORMATTERS = {
        'plain' => ['spec/runner/formatter/story/plain_text_formatter',   'Formatter::Story::PlainTextFormatter'],
        'p' => ['spec/runner/formatter/story/plain_text_formatter',   'Formatter::Story::PlainTextFormatter'],
        'html' => ['spec/runner/formatter/story/html_formatter',         'Formatter::Story::HtmlFormatter'],
        'h' => ['spec/runner/formatter/story/html_formatter',         'Formatter::Story::HtmlFormatter'],
        'progress' => ['spec/runner/formatter/story/progress_bar_formatter', 'Formatter::Story::ProgressBarFormatter'],
        'r' => ['spec/runner/formatter/story/progress_bar_formatter', 'Formatter::Story::ProgressBarFormatter']
      }

      def story_formatters
        @format_options ||= [['plain', @output_stream]]
        @formatters ||= load_formatters(@format_options, STORY_FORMATTERS)
      end

    end
  end
end

Spec::Runner::Options.send(:include, Spec::Runner::OptionsExtensions)