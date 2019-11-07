require 'rspec_honk/version'
require 'rspec/core'
require 'rspec/core/formatters/base_text_formatter'
require 'honk'

RSpec.configuration.add_setting :honk, default: true

class RspecHonk
  RSpec::Core::Formatters.register self, :example_failed
  attr_reader :output

  def initialize(output)
    @output = output
  end

  def example_failed(_notification)
    Honk.call
    output << ConsoleCodes.wrap('🦆', :failure)
  end
end
