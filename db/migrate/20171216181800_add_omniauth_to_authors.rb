class AddOmniauthToAuthors < ActiveRecord::Migration[5.1]
  def change
    add_column :authors, :provider, :string
    add_index :authors, :provider
    add_column :authors, :uid, :string
    add_index :authors, :uid
  end
end
