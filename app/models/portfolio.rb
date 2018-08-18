class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  scope :backend, lambda { where subtitle: 'Backend project' }
  scope :frontend, lambda { where subtitle: 'Frontend project' }
end
