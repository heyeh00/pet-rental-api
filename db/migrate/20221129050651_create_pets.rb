class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :breed
      t.integer :age
      t.string :personality
      t.string :image_url
      t.string :gender
      t.string :user_id
      t.string :address

      t.timestamps
    end
  end
end
