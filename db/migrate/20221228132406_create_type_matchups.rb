class CreateTypeMatchups < ActiveRecord::Migration[7.0]
  def change
    create_table :type_matchups do |t|
      t.string :primary_type
      t.string :secondary_type
      t.text :strong_against
      t.text :weak_against
      t.text :effectless_against
      t.text :resistant_to
      t.text :vulnerable_to
      t.text :effectless_to

      t.timestamps
    end

    add_index :type_matchups, :primary_type
    add_index :type_matchups, :secondary_type
  end
end
