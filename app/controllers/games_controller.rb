class GamesController < ApplicationController

  def create
    @game = Game.create(turn: 1, summer: true)
    # suisse_guy = User.where(nickname: "suisse")
    # @neutral_player = Player.create(game: @game, user: suisse_guy)
    initialize_deck(@game)
    redirect_to @game
  end

  def show
    @game = Game.last
  end

  private

  def initialize_deck(game)
    Card.all.each do |card|
      card.game = game
    end
  end
end
