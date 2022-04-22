class Game < ApplicationRecord
has_many :players
has_many :cards, dependent: :destroy
has_many :cells, dependent: :destroy

end
