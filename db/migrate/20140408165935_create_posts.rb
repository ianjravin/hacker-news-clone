class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :link
      t.integer :votes

      t.timestamps
    end
  end
end
