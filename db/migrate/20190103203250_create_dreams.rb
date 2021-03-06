class CreateDreams < ActiveRecord::Migration[5.2]
  def change
    create_table :dreams do |t|
      t.string :title
      t.string :description
      t.date :date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
