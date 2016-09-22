class Apartment < ActiveRecord::Base
    belongs_to :user
    belongs_to :currency
    belongs_to :area
    belongs_to :rental_type
    belongs_to :price_time    
    has_many :images
    validates :area_id, :street, :rental_type_id, :currency_id, :price_time, :price, :beds, :baths, :from_date, presence: true
    validate :agent_fee_and_furnished_are_present
    default_scope { order('created_at DESC') }    
    attr_accessor :available_now

    def baths_int
      ActionController::Base.helpers.number_to_human(baths, strip_insignificant_zeros: true)
    end 

    def beds_int
      ActionController::Base.helpers.number_to_human(beds, strip_insignificant_zeros: true)
    end 
    
    def agent_fee_and_furnished_are_present
        if agent_fee.nil?
          errors.add(:agent_fee, "You must specify if there is an agent fee")
        end
        if furnished.nil?
          errors.add(:furnished, "You must specify if the apartment is furnished")
        end
    end
    
    def from_date_display
      if from_date.past? || from_date.today?
        "Available Now"
      else 
        "Available as of #{from_date.strftime("%b %-d")}"
      end 
    end
end