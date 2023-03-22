class PokemonsController < ApplicationController
  def index
    @pagy, @pokemons = pagy(Pokemon.all)
  end

  def show
    @pokemon = Pokemon.find(params[:id])
  end
end
