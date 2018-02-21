class Menu < ApplicationRecord
  mount_uploader :image, ImageUploader

  validates :name, presence: true, length: {maximum: 255}

  scope :sort_menus, lambda {|param| select(:id,:name, :description, :image, :updated_at)
    .order(updated_at: :desc).page(param).per 10}
end
