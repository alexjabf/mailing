class WelcomeController < ApplicationController
  skip_before_filter :filter_admin!
  
  helper_method :resource_name, :resource, :devise_mapping
  def index
  end
end
