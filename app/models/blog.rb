class Blog < ApplicationRecord
  #by default will be in draft mode, otherwise published
  #can then be used as a method e.g in console do Blog.last.published! 
  enum status: {draft: 0, published: 1}
  extend FriendlyId
  friendly_id :title, use: :slugged
end
