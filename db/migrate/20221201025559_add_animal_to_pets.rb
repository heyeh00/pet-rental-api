class AddAnimalToPets < ActiveRecord::Migration[7.0]
  def change
    add_column :pets, :animal, :string
  end
end
