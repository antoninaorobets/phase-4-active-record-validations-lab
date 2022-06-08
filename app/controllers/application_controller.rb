class ApplicationController < ActionController::API
    before_action :find_posts, only: [:show, :delete]

 
end
