class Image < ActiveRecord::Base
    belongs_to :apartment
    default_scope { order('created_at ASC') }    
end