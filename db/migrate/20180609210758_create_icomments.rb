class CreateIcomments < ActiveRecord::Migration[5.1]
  def change
    create_table :icomments do |t|
      t.integer :user_id
      t.string :content
      t.integer :icase_id

      t.timestamps
    end
  end
end
