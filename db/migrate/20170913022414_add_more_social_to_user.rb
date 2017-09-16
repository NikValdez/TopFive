class AddMoreSocialToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :twitter2, :string
    add_column :users, :twitter3, :string
    add_column :users, :facebook2, :string
    add_column :users, :facebook3, :string
    add_column :users, :instagram2, :string
    add_column :users, :instagram3, :string
  end
end
