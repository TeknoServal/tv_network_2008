# frozen_string_literal: true

# Character class
class Character
  attr_reader :name, :actor, :salary
  def initialize(data)
    @name = data[:name]
    @actor = data[:actor]
    @salary = data[:salary]
  end
end
