class TypeMatchup < ApplicationRecord
  serialize :strong_against, Array
  serialize :weak_against, Array
  serialize :effectless_against, Array
  serialize :resistant_to, Array
  serialize :vulnerable_to, Array
  serialize :effectless_to, Array

  enum primary_type: {
    "bug" => "bug",
    "dark" => "dark",
    "dragon" => "dragon",
    "electric" => "electric",
    "fairy" => "fairy",
    "fighting" => "fighting",
    "fire" => "fire",
    "flying" => "flying",
    "ghost" => "ghost",
    "grass" => "grass",
    "ground" => "ground",
    "ice" => "ice",
    "normal" => "normal",
    "poison" => "poison",
    "psychic" => "psychic",
    "rock" => "rock",
    "steel" => "steel",
    "water" => "water"
  }
end
