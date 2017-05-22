class Comment < ActiveRecord::Base
    validates :reply, presence: { message: "리플을 달고 눌러야지 이사람아.. 쓰고와!"}
    belongs_to :post
end
