class Building < ActiveRecord::Base
  STATES = %w{Alabama Alaska Arizona Arkansas California Colorado Connecticut Delaware DC Florida Georgia Hawaii Idaho Illinois Indiana Iowa Kansas Kentucky Louisiana Maine Maryland Massachusetts Michigan Minnesota Mississippi Missouri Montana Nebraska Nevada New Hampshire New Jersey New Mexico New York North Carolina North Dakota Ohio Oklahoma Oregon Pennsylvania Puerto Rico Rhode Island South Carolina South Dakota Tennessee Texas Utah Vermont Virginia Washington West Virginia Wisconsin Wyoming}

  validates_presence_of :address
  validates_presence_of :city
  validates_inclusion_of :state, in: STATES
  validates_presence_of :zip, numericality: true

  belongs_to :owner
end
