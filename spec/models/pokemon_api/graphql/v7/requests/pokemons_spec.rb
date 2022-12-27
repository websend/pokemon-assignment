require "rails_helper"

module PokemonApi
  module Graphql
    module V7
      module Requests
        RSpec.describe Pokemons do
          describe ".retrieve" do
            let(:response_body) do
              [
                {
                  "key" => "bulbasaur",
                  "baseStats" => {
                    "attack" => 49,
                    "defense" => 49,
                    "hp" => 45,
                    "specialattack" => 65,
                    "specialdefense" => 65,
                    "speed" => 45
                  }
                },
                {
                  "key" => "ivysaur",
                  "baseStats" => {
                    "attack" => 62,
                    "defense" => 63,
                    "hp" => 60,
                    "specialattack" => 80,
                    "specialdefense" => 80,
                    "speed" => 60
                  }
                }
              ]
            end

            let(:response) do
              {
                "data" => {
                  "getAllPokemon" => response_body
                }
              }
            end

            before { expect(PokemonApi::Graphql::V7::Client).to receive(:query).and_return(response) }

            context "when a valid response is given" do
              it "returns a parsed response" do
                result = described_class.retrieve

                expect(result).to eql response_body
              end
            end
          end
        end
      end
    end
  end
end
