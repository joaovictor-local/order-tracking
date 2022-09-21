class Order < ApplicationRecord
  extend Enumerize

  belongs_to :customer

  enumerize :status, in: [:pending, :processing, :completed, :cancelled], default: :pending

  validates :status, presence: true
end
