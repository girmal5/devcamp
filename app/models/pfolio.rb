class Pfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies, reject_if: lambda { |attrs| attrs['name'].blank?}

  include Placeholder

  validates_presence_of :title,:body,:main_image,:thumb_image



#2 ways of creating custom methods

  def self.angfilter
    where(subtitle: 'Angular')
  end

  scope :angularfilter, -> {where(subtitle: "Angular")}


#right after pfolio.new has run this procoess auto runs
  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600',width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350',width: '150')
  end


  #using just = equals to will overwrite existing
  #using ||= is like writing if image is nill then put else dont


end
