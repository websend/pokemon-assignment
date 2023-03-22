class EncountersController < ApplicationController
  def new
    @wild_pokemon = RandomPokemon.retrieve
  end
end
