class AddRatingsToComments < ActiveRecord::Migration
  def change
    add_column :comments, :rating, :bigint
  end
end
