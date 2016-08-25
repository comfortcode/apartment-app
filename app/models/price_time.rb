class PriceTime < ActiveRecord::Base
    has_many :apartments, :dependent => :restrict_with_error
    validates :name, presence: true
end
