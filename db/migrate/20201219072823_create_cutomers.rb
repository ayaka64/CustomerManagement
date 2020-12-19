class CreateCutomers < ActiveRecord::Migration[5.2]
  def change
    create_table :cutomers do |t|
      t.string :name
      t.string :furigana
      t.string :address
      t.integer :birth
      t.string :occupation
      t.integer :phone_number

      t.timestamps
    end
  end
end
