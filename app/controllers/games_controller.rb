class GamesController < ApplicationController

  def create
    @game = Game.create
    redirect_to @game
  end

  def show
    @game = Game.last
  end
end
