class Pfolio < ApplicationRecord
  validates_presence_of :title,:body,:main_image,:thumb_image


  scope :angularfilter, -> {where(subtitle: "Angular")}

end
