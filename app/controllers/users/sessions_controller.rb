class Users::SessionsController < Devise::SessionsController

  def destroy
    super
    session["devise.google_data"] = nil
  end

end