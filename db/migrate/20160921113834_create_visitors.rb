class CreateVisitors < ActiveRecord::Migration
  def change
    create_table :visitors do |t|
      t.string :name
      t.string :email
      t.string :telephone
      t.text :content

      t.timestamps null: false
    end
  end
end
