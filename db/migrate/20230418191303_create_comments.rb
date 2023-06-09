class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :body
      t.string :user
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
