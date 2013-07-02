class RenameUsernameToUsers < ActiveRecord::Migration
  def change
    rename_column :users,:username,:firstname
  end
end
