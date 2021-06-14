class CreateFriends < ActiveRecord::Migration[6.1]
  def change
    create_table :friends do |t|
      t.string :fname
      t.string :lname
      t.string :contact

      t.timestamps
    end
  end
end
