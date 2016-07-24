class Image < ActiveRecord::Base
  belongs_to :post
  belongs_to :tower
end
