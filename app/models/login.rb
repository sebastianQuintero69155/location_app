class Login < ApplicationRecord
    validates :username, presence: true, uniqueness:{case_sensitive: false}, length: { minimum: 3, maximum: 50}
    VALID_EMAIL_REGEX= /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, confirmation: true, uniqueness: {case_sensitive: false}, format: { with: VALID_EMAIL_REGEX }
    has_secure_password
end
