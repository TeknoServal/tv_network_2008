# frozen_string_literal: true

# Network class
class Network
  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    @shows.map do |show|
      show.characters.select do |char|
        char if char.name.upcase == char.name && char.salary > 500_000
      end
    end.flatten
  end

  def actors_by_show
    show_actors = {}

    @shows.each do |show|
      show_actors[show] = show.actors
    end
    show_actors
  end

  def shows_by_actor
    show_actors = actors_by_show
    actors_with_show = {}

    show_actors.each do |show, actors|
      actors.each do |actor|
        if actors_with_show[actor].nil?
          actors_with_show[actor] = [show]
        else
          actors_with_show[actor] << show
        end
      end
    end
    actors_with_show
  end
end
