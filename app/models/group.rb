class Group < ApplicationRecord
    validates :name, presence: true
    belongs_to :user
    enum icon: {
        home: "fas fa-home",
        heart: "fas fa-heart",
        globe: "fas fa-globe",
        user: "fas fa-user",
        envelope: "fas fa-envelope",
        camera: "fas fa-camera",
        shopping_cart: "fas fa-shopping-cart",
        briefcase: "fas fa-briefcase",
        cog: "fas fa-cog",
        check_circle: "fas fa-check-circle"
      }
end
