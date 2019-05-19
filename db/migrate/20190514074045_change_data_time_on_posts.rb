class ChangeDataTimeOnPosts < ActiveRecord::Migration[5.0]
  def change
      change_column :posts,:time,:time
  end
end
