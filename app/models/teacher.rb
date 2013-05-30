class Teacher < ActiveRecord::Base
   attr_accessible :email, :first_name, :last_name, :prefix, :password, :password_confirmation
   has_secure_password

   before_save { |teacher| teacher.email = email.downcase }
   before_save :create_remember_token

   VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
   validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
      uniqueness: { case_sensitive: false }
   validates :first_name, presence: true
   validates :last_name, presence: true
   validates :prefix, presence: true
   validates :password, presence: true, length: { minimum: 6 }
   validates :password_confirmation, presence: true

   after_validation { self.errors.messages.delete(:password_digest) }

   private
      def create_remember_token
         self.remember_token = SecureRandom.urlsafe_base64
      end
end
