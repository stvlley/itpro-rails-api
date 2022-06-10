class User < ApplicationRecord
    has_many :tickets
    validates :email, presence: true, uniqueness: true
end
