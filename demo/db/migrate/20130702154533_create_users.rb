class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.integer :phone
      t.text :details
      t.timestamps
    end
  end
end
