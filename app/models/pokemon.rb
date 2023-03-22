class Pokemon < ApplicationRecord
  belongs_to :base_pokemon
  belongs_to :trainer, optional: true

  has_and_belongs_to_many :moves

  delegate :base_catch_rate,
           :dex_index,
           :levelling_rate,
           :evolves_from,
           :evolution_level,
           :name,
           :slug,
           :description,
           :pokemon_types,
           :sprite, to: :base_pokemon

  def level_up
    update(
      hp: calculate_stat(hp, :hp),
      defense: calculate_stat(defense, :defense),
      special_defense: calculate_stat(special_defense, :special_defense),
      attack: calculate_stat(attack, :attack),
      special_attack: calculate_stat(special_attack, :special_attack)
    )
  end

  # NOTE: Each pokemon gets 1/50 of its base stats and 1/100 of the IV values
  def calculate_stat(current_stat, stat_type, level_increase: 1)
    (
      current_stat +
      (base_pokemon.public_send(stat_type) * 0.02) +
      (public_send("#{stat_type}_iv") * 0.01)
    ) * level_increase
  end
end
