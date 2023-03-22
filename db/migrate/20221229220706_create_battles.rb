class CreateBattles < ActiveRecord::Migration[7.0]
  def change
    create_table :battles do |t|
      t.references :trainer, null: false, foreign_key: true

      t.string :battle_type
      t.integer :opponent_id, null: false, foreign_key: true
      t.string :state, default: "start"

      t.timestamps
    end
  end
end
