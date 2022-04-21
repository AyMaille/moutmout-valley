class GamesController < ApplicationController

  def create
    @game = Game.new(turn: 1, summer: true)
    @game.save
    redirect_to @game
  end

  def show
    @game = Game.last
  end
end
