class Apartment < ActiveRecord::Base
    belongs_to :user
    has_many :images
    validates :street, presence: true
    default_scope { order('created_at DESC') }    
end
