class CreateMemes < ActiveRecord::Migration
  def change
    create_table :memes do |t|
      t.string :url
      t.string :caption

      t.timestamps null: false
    end
  end
end
