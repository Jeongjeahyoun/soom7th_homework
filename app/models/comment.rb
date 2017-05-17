class Comment < ActiveRecord::Base
    validates :reply, presence: true
    belongs_to :post
end
