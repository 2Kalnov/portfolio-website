class Portfolio < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image

  scope :backend, lambda { where subtitle: 'Backend project' }
  scope :frontend, lambda { where subtitle: 'Frontend project' }

  after_initialize :set_defaults

  def set_defaults 
    self.main_image ||= Placeholder.image_generator(height: 500, width: 300)
    self.thumb_image ||= Placeholder.image_generator(height: 250, width: 150)
  end
end
