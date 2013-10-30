class HomeController < ApplicationController

	def index

		@profile = Profile.new
		if signed_in?
			@user = current_user

			@profiles = Profile.where("creator = ?", @user.id)
		end

	end

	

	

	#def thecoolband
		# Don't need anything here.
	#end

	def theradband
		logger.info "Hello there"
		# Don't need anything right here.
	end

	def sweetband
		logger.info "Terminal/server output test"
	end

end
