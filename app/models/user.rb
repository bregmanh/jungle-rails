class User < ActiveRecord::Base
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: {case_sensitive: false}
  validates :password, presence: true
  validates :password_confirmation, presence: true

  def authenticate_with_credentials(email, password)
    #lower_case_email = email.downcase.strip
    user = user.find_by_email(email)
    user if user&.authenticate(password)
  end

end
