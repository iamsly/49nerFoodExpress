class Order < ActiveRecord::Base
    belongs_to :user
    validates :item, presence: true, length: {minimum: 3, maximum: 10}
    validates :drink, presence: true, length: {minimum: 3, maximum: 50}
    validates :room, presence: true, length: {minimum: 3, maximum: 10}
    validates :description, presence: true, length: {minimum: 3, maximum: 500}
    validates :user_id, presence: true
end