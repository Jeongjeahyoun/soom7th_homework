class Post < ActiveRecord::Base
    validates :title, presence: { message: "제목은 쓰고 제출하자.."}
    has_many :comments
end
