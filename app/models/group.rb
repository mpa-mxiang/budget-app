class Group < ApplicationRecord
  validates :name, presence: true
  belongs_to :author, class_name: 'User'
  has_many :entities
  enum icon: {
    home: 'fas fa-home',
    heart: 'fas fa-heart',
    globe: 'fas fa-globe',
    user: 'fas fa-user',
    envelope: 'fas fa-envelope',
    camera: 'fas fa-camera',
    briefcase: 'fas fa-briefcase',
    cog: 'fas fa-cog'
  }
end