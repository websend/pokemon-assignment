class Move < ApplicationRecord
  has_and_belongs_to_many :base_pokemons
  has_and_belongs_to_many :pokemons
end
