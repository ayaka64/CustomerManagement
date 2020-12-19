class CreateCommingLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :comming_logs do |t|
      t.references :customer, index: true
      t.references :picture, index: true
      t.integer :visit_date
      

      t.timestamps
    end
  end
end
