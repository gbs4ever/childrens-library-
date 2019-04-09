1. question  what does this code mean  ?
 sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
2.  user.uid = auth.uid  why was this missing from user model 