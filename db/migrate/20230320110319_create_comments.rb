class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.string :status
      t.references :article

      t.timestamps
    end
  end
end
