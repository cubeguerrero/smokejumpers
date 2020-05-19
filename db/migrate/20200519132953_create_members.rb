class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.references :team, null: false, foreign_key: true
      t.string :name, null: false
      t.integer :age, null: false
      t.text :bio

      t.timestamps
    end
  end
end
