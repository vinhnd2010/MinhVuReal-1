class District < ActiveRecord::Base
  has_many :towers, dependent: :destroy
end
