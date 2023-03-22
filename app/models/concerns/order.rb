class Order < ApplicationRecord
    has_one :buyer 
    has_many :flavors 
    belongs_to :order_date
end