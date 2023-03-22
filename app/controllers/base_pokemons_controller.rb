class BasePokemonsController < ApplicationController
  def index
    @pagy, @base_pokemons = pagy(BasePokemon.all)
  end

  def show
    @base_pokemon = BasePokemon.find(params[:id])
  end
end
