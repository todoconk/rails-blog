class Post < ActiveRecord::Base
	validates :title, presence: true, lenth: { minimum: 5 }
end
