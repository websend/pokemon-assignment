module PokemonApi
  module Graphql
    module V7
      module Requests
        class Pokemons
          def self.retrieve
            response = PokemonApi::Graphql::V7::Client.query(
              <<~GRAPHQL
                query {
                  getAllPokemon(offset: 87) {
                    key
                    baseStats {
                      attack
                      defense
                      hp
                      specialattack
                      specialdefense
                      speed
                    }
                    baseStatsTotal
                    catchRate {
                      base
                    }
                    evolutionLevel
                    evolutions {
                      num
                      key
                    }
                    flavorTexts {
                      flavor
                      game
                    }
                    forme
                    height
                    levellingRate
                    types {
                      name
                    }
                    num
                    learnsets {
                      generation3 {
                        levelUpMoves {
                          move {
                            key
                            accuracy
                            basePower
                            category
                            contestType
                            desc
                            isFieldMove
                            isGMax
                            isNonstandard
                            isZ
                            maxMovePower
                            name
                            pp
                            priority
                            shortDesc
                            target
                            type
                            zMovePower
                          }
                          generation
                          level
                        }
                      }
                    }
                    otherFormes
                    species
                    sprite
                    weight
                  }
                }
              GRAPHQL
            )

            response.dig("data", "getAllPokemon") || []
          end
        end
      end
    end
  end
end
