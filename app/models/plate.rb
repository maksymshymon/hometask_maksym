class Plate < ApplicationRecord
  belongs_to :collection
  has_one_attached :image
  validates :title, presence: true
  validates :order, presence: true

  after_initialize :init

  def init
    self.order ||= 888
  end

end
