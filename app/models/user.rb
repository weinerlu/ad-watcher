require 'bcrypt'
class User < ApplicationRecord
  # users.password_hash in the database is a :string
  include BCrypt
  has_many :videos
  has_many :likes

  validates :name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true

  # users.password_hash in the database is a :string

  def password
    @password ||= Password.new(password_hash) unless password_hash.nil?
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end


end
