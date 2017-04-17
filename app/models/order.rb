class Order < ActiveRecord::Base
    validates :item, presence: true, length: {minimum: 3, maximum: 3}
    validates :drink, presence: true, length: {minimum: 3, maximum: 10}
    validates :room, presence: true, length: {minimum: 3, maximum: 5}
    validates :description, presence: true, length: {minimum: 10, maximum: 300}
end