class Blog < ApplicationRecord
  #by default will be in draft mode, otherwise published
  #can then be used as a method e.g in console do Blog.last.published!
  #we can then also use logic as true and fale when we do Blog.last.published? it returns true
  #or false then can use that shizzz

  enum status: {draft: 0, published: 1}
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title,:body

  belongs_to :topic
end
