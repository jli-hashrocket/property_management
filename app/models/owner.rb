class Owner < ActiveRecord::Base
  validates_presence_of :last_name
  validates_presence_of :first_name
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create }, presence: true

  has_many :buildings,
    inverse_of: :owner

  def owner_full_name
    "#{last_name}, #{first_name}"
  end
end
