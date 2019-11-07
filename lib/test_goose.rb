require 'rspec/core'
require 'rspec/core/formatters/progress_formatter'
require 'honk'

class TestGoose < RSpec::Core::Formatters::ProgressFormatter
  RSpec::Core::Formatters.register self, :example_failed

  def example_failed(_notification)
    Honk.call
    super
  end
end
