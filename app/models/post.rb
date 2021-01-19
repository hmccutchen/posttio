class Post < ApplicationRecord
	has_many :replies, dependent: :destroy
	accepts_nested_attributes_for :replies, allow_destroy: true , reject_if: proc {|attr| attr['body'].blank? }
	has_rich_text :body
end
