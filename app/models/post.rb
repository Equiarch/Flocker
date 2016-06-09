class Post < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: 144} # 12 x 12 = 144 more significant than twitter cap.rails 
  default_scope -> {order(created_at: :desc) } # newest Squawks / posts first 
end
