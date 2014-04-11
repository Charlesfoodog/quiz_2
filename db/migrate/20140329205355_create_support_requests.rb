class CreateSupportRequests < ActiveRecord::Migration
  def change
    create_table :support_requests do |t|
      t.string :discussion
      t.string :email
      t.text :comments
      t.boolean :done, default: false
      t.text :message

      t.timestamps
    end

    add_index :support_requests, :discussion
    add_index :support_requests, :email
    add_index :support_requests, :message
    add_index :support_requests, :comments
  end
end
