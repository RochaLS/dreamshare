class RemoveDateFromDream < ActiveRecord::Migration[5.2]
  def change
    remove_column :dreams, :date, :date
  end
end
