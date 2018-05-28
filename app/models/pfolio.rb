class Pfolio < ApplicationRecord
  validates_presence_of :title,:body,:main_image,:thumb_image


  scope :angularfilter, -> {where(subtitle: "Angular")}


#right after pfolio.new has run this procoess auto runs
  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "http://via.placeholder.com/600x400"
    self.thumb_image ||= "http://via.placeholder.com/350x150"
  end

end
