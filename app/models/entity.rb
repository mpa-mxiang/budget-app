class Entity < ApplicationRecord
    validates :name, :amount, presence: true
    belongs_to :user
    has_many :entities
end
