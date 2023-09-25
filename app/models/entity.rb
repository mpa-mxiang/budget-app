class Entity < ApplicationRecord
    validates :name, :amount, presence: true
    belongs_to :user
    belongs_to :group
end
