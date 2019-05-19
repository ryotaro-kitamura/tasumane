class RemoveStudytimeFromPosts < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :studytime, :time
  end
end
