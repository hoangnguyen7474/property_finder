class Post < ApplicationRecord
  has_one_attached :photo

  scope :active, -> { where(active: true) }
  scope :latest, -> { order created_at: :desc }
end
