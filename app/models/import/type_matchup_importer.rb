module Import
  class TypeMatchupImporter
    def self.run
      ::TypeMatchup.primary_types.keys.each do |primary_type|
        primary_matchup = PokemonApi::Graphql::V7::Requests::TypeMatchups.retrieve(primary_type: primary_type)

        next if primary_matchup.blank?

        create_type_matchup(
          matchup: primary_matchup,
          primary_type: primary_type,
          secondary_type: nil
        )

        ::TypeMatchup.primary_types.keys.each do |secondary_type|
          next if primary_type == secondary_type

          combined_matchup = PokemonApi::Graphql::V7::Requests::TypeMatchups.retrieve(
            primary_type: primary_type,
            secondary_type: secondary_type
          )

          next if combined_matchup.blank?

          create_type_matchup(
            matchup: combined_matchup,
            primary_type: primary_type,
            secondary_type: secondary_type
          )
        end
      end

      true
    end

    def self.create_type_matchup(matchup:, primary_type:, secondary_type:)
      ::TypeMatchup.find_or_create_by(
        primary_type: primary_type,
        secondary_type: secondary_type,
        strong_against: matchup.dig("attacking", "effectiveTypes"),
        weak_against: matchup.dig("attacking", "resistedTypes"),
        effectless_against: matchup.dig("attacking", "effectlessTypes"),
        resistant_to: matchup.dig("defending", "resistedTypes"),
        vulnerable_to: matchup.dig("defending", "effectiveTypes"),
        effectless_to: matchup.dig("defending", "effectlessTypes")
      )
    end
  end
end
