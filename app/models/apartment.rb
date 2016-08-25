class Apartment < ActiveRecord::Base
    belongs_to :user
    belongs_to :currency
    belongs_to :area
    belongs_to :rental_type
    belongs_to :price_time    
    has_many :images
    validates :area_id, :street, :rental_type_id, :currency_id, :price_time, :price, :beds, :baths, :furnished, :from_date, presence: true
    default_scope { order('created_at DESC') }    
    attr_accessor :available_now
end