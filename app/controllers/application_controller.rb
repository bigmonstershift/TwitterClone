class ApplicationController < ActionController::Base
	include SessionsHelper

	private

	def require_user_logged_in
		unless logged_in?
			redirect_to login_path
		end
	end

	def counts(user)
		@count_tweets = user.tweets.count
		@count_followings = user.followings.count
		@count_followers = user.followers.count
		@count_favorites = user.favoritings.count
	end
end
