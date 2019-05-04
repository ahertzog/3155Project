class Club < ApplicationRecord
    has_many :meetings
    has_many :posts
end