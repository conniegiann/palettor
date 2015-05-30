class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :occupation
      t.text :website
      t.text :image
      t.string :password_digest
      t.text :email
      t.timestamps
    end
  end
end