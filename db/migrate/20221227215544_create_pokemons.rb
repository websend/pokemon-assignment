class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.references :base_pokemon, null: false, foreign_key: true
      t.references :trainer, foreign_key: true

      t.integer :hp
      t.integer :attack
      t.integer :special_attack
      t.integer :defense
      t.integer :special_defense
      t.integer :speed

      t.integer :current_hp
      t.integer :current_attack
      t.integer :current_special_attack
      t.integer :current_defense
      t.integer :current_special_defense
      t.integer :current_speed

      t.integer :level
      t.integer :current_experience
      t.integer :experience_to_level

      t.timestamps
    end
  end
end
