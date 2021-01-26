class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments, id: :string do |t|
      t.belongs_to :post, null: false, foreign_key: true, type: :string, index: true
      t.text :body

      t.timestamps
    end
  end
end
