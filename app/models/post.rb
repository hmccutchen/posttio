class Post < ApplicationRecord
	has_many :replies
	has_rich_text :body
end
