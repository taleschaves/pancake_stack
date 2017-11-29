class Pancake
  def initialize(sound)
    self.sound = sound
  end

  def eat
    puts sound
  end

  private
  attr_accessor :sound
end