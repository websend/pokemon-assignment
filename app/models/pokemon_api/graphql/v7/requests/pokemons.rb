module PokemonApi
  module Graphql
    module V7
      module Requests
        class Pokemons
          # NOTE: For now we're only importing the first 50 Pokemon
          def self.retrieve
            response = PokemonApi::Graphql::V7::Client.query(
              <<~GRAPHQL
                query {
                  getAllPokemon(offset: 89, take: 50) {
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
                    preevolutions {
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
                      generation4 {
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
                      generation5 {
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
                      generation6 {
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
                      generation7 {
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
                      generation8 {
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
                    levellingRate
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
