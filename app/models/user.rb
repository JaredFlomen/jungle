class User < ActiveRecord::Base

  has_secure_password

  def self.authenticate_with_credentials(email, password)
    #downcase sends everything to lowercase
    #strip gets rid of the spaces
    email = email.downcase.strip
    @user = User.find_by_email(email)
    if @user && @user.authenticate(password)
      @user
    else
      nil
    end
  end

end
