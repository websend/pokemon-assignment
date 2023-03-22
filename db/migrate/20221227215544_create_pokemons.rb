class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.references :base_pokemon, null: false, foreign_key: true
      t.references :trainer, foreign_key: true

      t.string :name
      t.string :slug
      t.string :state
      t.integer :position
      t.float :height
      t.float :weight
      t.boolean :in_team

      t.integer :hp_iv
      t.integer :attack_iv
      t.integer :special_attack_iv
      t.integer :defense_iv
      t.integer :special_defense_iv
      t.integer :speed_iv

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
