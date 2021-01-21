class Reply < ApplicationRecord
  belongs_to :post

  has_rich_text :body
end
