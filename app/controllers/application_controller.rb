class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token
    before_action :print_display_message
    def print_display_message
        puts "Inherited before action filter"
    end

    
end
