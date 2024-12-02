class Invoice < ApplicationRecord
  validates :name, presence: true
  validates :surname, presence: true
  validates :email, presence: true
  validates :from, presence: true

  after_initialize :init

  def init
    self.status ||= 0
  end
end
