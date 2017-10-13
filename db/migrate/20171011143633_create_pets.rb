class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name, null: false
      t.string :species, null: false
      t.string :color, null: false
      t.integer :age, null: false
      t.boolean :adopted, null: false
      t.string :image, null: false

      t.timestamps
    end
  end
end
