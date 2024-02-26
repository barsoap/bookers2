class RenameIntroColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :intro, :introduction
  end
end
