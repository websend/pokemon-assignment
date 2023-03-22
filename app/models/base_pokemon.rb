class BasePokemon < ApplicationRecord
  has_many :pokemons

  has_and_belongs_to_many :abilities
  has_and_belongs_to_many :moves

  serialize :pokemon_types, Array
end
