class Follow < ApplicationRecord
  belongs_to :followed, class_name: 'User', required: false
  belongs_to :follower, class_name: 'User', required: false
end
