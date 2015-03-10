class CreateFashions < ActiveRecord::Migration
  def change
    create_table :fashions do |t|
      t.string :dress
      t.string :skirt
      t.string :blouse
      t.string :shirt
      t.string :shoes
      t.string :hacker
      t.string :say

      t.timestamps null: false
    end
  end
end
