class RemovePrivateFromDreams < ActiveRecord::Migration[5.2]
  def change
    remove_column :dreams, :private, :boolean
  end
end
