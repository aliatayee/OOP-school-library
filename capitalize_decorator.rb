require './base_decorator'
class CapitalizeDecorator < BaseDecorator
  def initialize(nameable = Nameable.new)
    super()
    @nameable = nameable
  end

  def correct_name
    # Capitalize the first letter of the given name.
    @nameable.correct_name.capitalize
  end
end
