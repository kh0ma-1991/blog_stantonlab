class AddDefaultValueToViewsInPosts < ActiveRecord::Migration[5.1]
  def change
    change_column_default :posts, :views, 0
  end
end
