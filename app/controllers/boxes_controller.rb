class BoxesController < ApplicationController

	# Show the form to the user
	def new
		@profile = Profile.find_by_slug!(params[:profile_id])
		@box = @profile.boxes.new
	end


	def create
		# Find our profile again
		@profile = Profile.find_by_slug!(params[:profile_id])

		# Make a new box object (long way)
		@box = @profile.boxes.new
		@box.text = params[:box][:text]
		@box.save

		# Make a new box object (short way):
		# @box = @profile.boxes.create(params[:box])

		# Redirect to the path of the profile after creating a box
		redirect_to profile_path(@profile)
	end

end


