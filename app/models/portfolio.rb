class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  scope :backend, lambda { where subtitle: 'Backend project' }
  scope :frontend, lambda { where subtitle: 'Frontend project' }

  after_initialize :set_defaults

  def set_defaults 
    self.main_image ||= "http://placehold.it/500x300"
    self.thumb_image ||= "http://placehold.it/250x150"
  end
end
