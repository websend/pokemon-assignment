require "rails_helper"

module PokemonApi
  module Graphql
    module V7
      module Requests
        RSpec.describe TypeMatchups do
          describe ".retrieve" do
            let(:response_body) do
              [
                "attacking" => {
                  "effectiveTypes" => [
                    "ice",
                    "rock",
                    "water"
                  ]
                },
                "defending" => {
                  "effectiveTypes" => [
                    "bug",
                    "fighting",
                    "ice",
                    "steel"
                  ]
                }
              ]
            end

            let(:response) do
              {
                "data" => {
                  "getTypeMatchup" => response_body
                }
              }
            end

            before { expect(PokemonApi::Graphql::V7::Client).to receive(:query).and_return(response) }

            context "when a valid response is given" do
              it "returns a parsed response" do
                result = described_class.retrieve(primary_type: "grass")

                expect(result).to eql response_body
              end
            end
          end
        end
      end
    end
  end
end
