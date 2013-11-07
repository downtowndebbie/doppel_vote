class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.references :user
    	t.references :picture
    	t.string :content
    	
      t.timestamps
    end
  end

  def down
  	drop_table
  end

end
