class DropContentCreators < ActiveRecord::Migration[5.0]
  def change
  	drop_table :content_creators
  end
end


