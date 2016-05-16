class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, null:   false
      t.string :last_name,  null:   false
      t.string :email,      unique: true
    end
  end
end
