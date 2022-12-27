module PokemonApi
  module Graphql
    module V7
      module Requests
        class TypeMatchups
          def self.retrieve(primary_type:, secondary_type: nil)
            response = PokemonApi::Graphql::V7::Client.query(
              <<~GRAPHQL
                query GetTypeMatchup($primaryType: TypesEnum!, $secondaryType: TypesEnum) {
                  getTypeMatchup(primaryType: $primaryType, secondaryType: $secondaryType) {
                    attacking {
                      doubleEffectiveTypes
                      doubleResistedTypes
                      effectiveTypes
                      effectlessTypes
                      normalTypes
                      resistedTypes
                    }
                    defending {
                      doubleEffectiveTypes
                      doubleResistedTypes
                      effectiveTypes
                      effectlessTypes
                      normalTypes
                      resistedTypes
                    }
                  }
                }
              GRAPHQL
            )

            response.dig("data", "getTypeMatchup") || []
          end
        end
      end
    end
  end
end
