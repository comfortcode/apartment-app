class Currency < ActiveRecord::Base
    has_many :apartments
    validates :name, :symbol, presence: true
end
