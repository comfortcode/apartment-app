class Apartment < ActiveRecord::Base
    belongs_to :user
    validates :street, presence: true
    default_scope { order('created_at DESC') }    
end
