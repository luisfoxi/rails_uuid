class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments, id: :uuid do |t|
      t.belongs_to :post, null: false, foreign_key: true, type: :uuid, index: true
      t.text :body

      t.timestamps
    end
  end
end
