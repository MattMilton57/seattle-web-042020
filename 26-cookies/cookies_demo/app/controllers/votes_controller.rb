class VotesController < ApplicationController

    def create 
        if session[:user_votes].to_i > 0
        @vote = Vote.create(cookie_id: params[:cookie_id])
        session[:user_votes] = session[:user_votes].to_i - 1
        else 
            flash[:error] = "Out of Votes"
        end 
        redirect_to cookies_path
    end 
end
