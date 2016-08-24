class PriceTime < ActiveRecord::Base
    has_many :apartments
    validates :name, presence: true
end
