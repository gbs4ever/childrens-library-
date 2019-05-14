class ApplicationController < ActionController::Base
  before_action :authenticate_user!
#new project only
end
