class Tower < ActiveRecord::Base
  belongs_to :district
  has_many :images, dependent: :destroy
end
