class Location < ActiveRecord::Base
  belongs_to :patient
  validates :code, length:{ maximum: 10}
  validates :name, presence:true, length:{ maximum: 80}
end