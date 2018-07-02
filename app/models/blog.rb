class Blog < ApplicationRecord
 has_many :topics
 validates :title, presence: true
 validates :subtitle, presence: true
 validates :body, presence: true
end
