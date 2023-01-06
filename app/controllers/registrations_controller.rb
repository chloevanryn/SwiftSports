class RegistrationsController < Devise::RegistrationsController
def new
  super
end

private

def after_sign_up_path_for(resource)
  # PATH YOU WANT TO REDIRECT TO
  new_user_sport_path
end
end
