class AddVoteCounterToSupportRequests < ActiveRecord::Migration
  def change
    add_column :support_requests, :vote_count, :integer, default: 0
  end
end
