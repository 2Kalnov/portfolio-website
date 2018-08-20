class Skill < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :level

  after_initialize :set_defaults

  def set_defaults 
    self.badge ||= Placeholder.image_generator(height: 48, width: 48)
  end
end
