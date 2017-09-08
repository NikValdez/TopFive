class AddUserIdToContentCreators < ActiveRecord::Migration[5.0]
  def change
    add_column :content_creators, :user_id, :integer
  end
end
