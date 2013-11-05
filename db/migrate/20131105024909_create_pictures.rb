class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.integer :facebook_id
      t.string :facebook_url
      t.integer :user_id

      t.timestamps
    end
  end
end
