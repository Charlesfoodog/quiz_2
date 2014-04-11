class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.references :support_request, index: true

      t.timestamps
    end
  end
end
