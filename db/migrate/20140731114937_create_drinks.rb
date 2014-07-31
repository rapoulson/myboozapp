class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.string :name
      t.string :method
      t.string :glass
      t.string :garnish
      t.string :ice
      t.text :notes

      t.timestamps
    end
  end
end
