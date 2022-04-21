class Game < ApplicationRecord
  def initialize
    self.turn = 1
    self.summer = true
  end
end
