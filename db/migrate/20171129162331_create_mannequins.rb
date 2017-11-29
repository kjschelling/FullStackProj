class CreateMannequins < ActiveRecord::Migration[5.1]
  def change
    create_table :mannequins do |t|
      t.string :given_name
      t.string :surname
      t.string :height
      t.string :weight
      t.string :age
      t.string :measurements
      t.string :eye_color
      t.string :hair_color
      t.string :hair_length
      t.string :gender

      t.timestamps
    end
  end
end
