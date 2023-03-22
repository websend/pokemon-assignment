class CreateJoinTableAbilityBasePokemon < ActiveRecord::Migration[7.0]
  def change
    create_join_table :abilities, :base_pokemons do |t|
      t.index [:ability_id, :base_pokemon_id]
      t.index [:base_pokemon_id, :ability_id]
    end
  end
end
