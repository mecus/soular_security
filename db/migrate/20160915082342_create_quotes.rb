class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :f_name
      t.string :l_name
      t.string :company
      t.string :email
      t.string :telephone
      t.string :buz_size

      t.timestamps null: false
    end
  end
end
