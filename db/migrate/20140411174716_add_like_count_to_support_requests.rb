class AddLikeCountToSupportRequests < ActiveRecord::Migration
  def change
    add_column :support_requests, :like_count, :integer
  end
end
