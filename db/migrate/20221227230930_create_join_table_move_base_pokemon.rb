class CreateJoinTableMoveBasePokemon < ActiveRecord::Migration[7.0]
  def change
    create_join_table :moves, :base_pokemons do |t|
      t.index [:move_id, :base_pokemon_id]
      t.index [:base_pokemon_id, :move_id]
    end
  end
end
