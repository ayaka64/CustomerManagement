class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.references :customer, index: true
      t.string :image
      t.string :memo

      t.timestamps
    end
  end
end
