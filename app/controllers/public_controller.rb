class PublicController < ApplicationController
  def main
    if account_signed_in?
      path = current_account.admin? ? accounts_path : properties_path      
    end
    
    @properties = Property.latest
    @posts = Post.latest
  end
end
