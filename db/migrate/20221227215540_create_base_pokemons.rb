class CreateBasePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :base_pokemons do |t|
      t.integer :dex_index
      t.string :name
      t.string :slug
      t.string :description
      t.text :pokemon_types
      t.string :sprite
      t.integer :base_catch_rate
      t.string :levelling_rate
      t.string :evolves_from
      t.integer :evolution_level

      t.float :height
      t.float :weight

      t.integer :hp
      t.integer :attack
      t.integer :special_attack
      t.integer :defense
      t.integer :special_defense
      t.integer :speed

      t.timestamps
    end
  end
end
