class User < ApplicationRecord
  max_paginates_per 100
  rolify

  devise :database_authenticatable, :registerable, :recoverable, :rememberable,
    :trackable, :validatable, :confirmable

  validates :name, presence: true, length: {maximum: 255}
  validates :address, presence: true, length: {maximum: 255}
  validates :country, length: {maximum: 255}
  validates :phone, presence: true, format: { with: /\A\d+\z/, message: "Number only." },
    length: {maximum: 255}
  validates :is_female, inclusion: {in: [true, false]}

  scope :sort_users, lambda {|param| select(:id,:email,:name, :is_female, :date_of_birth,
    :phone,:address,:updated_at).order(updated_at: :desc).page(param).per 10}
end
