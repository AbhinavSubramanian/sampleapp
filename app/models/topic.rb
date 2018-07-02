class Topic < ApplicationRecord
  belongs_to :blog
  validates :title, presence: true
end
