class Entity < ApplicationRecord
    validates :name, :icon, presence: true
    belongs_to :user
    belongs_to :group
end
