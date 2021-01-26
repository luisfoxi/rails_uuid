class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts, id: :string do |t|
      t.string :title

      t.timestamps
    end
  end
end
