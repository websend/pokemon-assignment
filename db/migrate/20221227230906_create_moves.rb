class CreateMoves < ActiveRecord::Migration[7.0]
  def change
    create_table :moves do |t|
      t.string :name
      t.string :slug
      t.string :description
      t.string :pokemon_type
      t.integer :accuracy
      t.integer :base_power
      t.integer :pp
      t.integer :max_move_power
      t.integer :z_move_power
      t.integer :generation
      t.integer :level

      t.timestamps
    end
  end
end
