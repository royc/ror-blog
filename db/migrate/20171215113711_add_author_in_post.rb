class AddAuthorInPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :author_id, :integer
  end
end
