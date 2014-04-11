class Comment < ActiveRecord::Base
  belongs_to :support_request
end
