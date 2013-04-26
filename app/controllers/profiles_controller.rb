class ProfilesController < ApplicationController

	def create
		logger.info "Create action in home_controller was triggered here"
		logger.info params.inspect
		logger.info "----- params[:slug] = " + params[:slug] + "-----\n\n"
		@profile = Profile.new
		logger.info "--- @profile.inspect: " + @profile.inspect + " ----\n\n"
		@profile.slug = params[:slug]
		logger.info "--- @profile.inspect: " + @profile.inspect + " ----\n\n"
		@profile.save
		logger.info "--- @profile.inspect: " + @profile.inspect + " ----\n\n"
		redirect_to profile_path(@profile)
	end

	def show
		logger.info "--- Hey! params[:id]: " + params[:id] + " -----\n\n"
		@slug = params[:id]
		@profile = Profile.find_by_slug!(@slug)

	end


end
