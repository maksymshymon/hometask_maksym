class Collection < ApplicationRecord
  has_many :plates, dependent: :destroy
  has_many_attached :images
  validates :title, presence: true

  after_initialize :init

  def init
    self.publish ||= false
  end

end
