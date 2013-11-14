class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :facebook_url
      t.string :facebook_id
      t.references :comments	

      t.timestamps
    end
  end
end
