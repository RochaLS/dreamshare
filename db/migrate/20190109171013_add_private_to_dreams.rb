class AddPrivateToDreams < ActiveRecord::Migration[5.2]
  def change
    add_column :dreams, :private, :boolean
  end
end
