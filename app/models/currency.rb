class Currency < ActiveRecord::Base
    has_many :apartments, :dependent => :restrict_with_error
    validates :name, :symbol, presence: true
end
