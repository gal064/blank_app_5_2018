class CreateIcases < ActiveRecord::Migration[5.1]
  def change
    create_table :icases do |t|
      t.integer :user_id
      t.string :question
      t.integer :company_id
      t.string :role
      t.integer :club_id
      t.string :approach
      t.string :element

      t.timestamps
    end
  end
end
