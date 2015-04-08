class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :ticket, index: true, foreign_key: true
      t.text :body

      t.timestamps null: false
    end
  end
end
