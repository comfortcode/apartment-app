class Apartment < ActiveRecord::Base
    belongs_to :user
    belongs_to :currency
    belongs_to :area
    belongs_to :rental_type
    has_many :images
    validates :street, presence: true
    default_scope { order('created_at DESC') }    
    attr_accessor :available_now
end
