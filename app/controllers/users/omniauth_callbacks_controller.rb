class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  include Devise::Controllers::Rememberable

def facebook
  auth = request.env['omniauth.auth']
    user = User.find_by(
      provider: auth.provider,
      uid: auth.uid
      ) || User.create(
      provider: auth.provider,
      uid: auth.uid,
      name: auth.info.name
    )

    p "user"
    p user
    p "end user"

    # remember_me(user)

    sign_in_and_redirect user, event: :authentication
  end

end