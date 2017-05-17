class Post < ActiveRecord::Base
    validates :title, presence: true
    belongs_to :board
    has_many :comments
end
