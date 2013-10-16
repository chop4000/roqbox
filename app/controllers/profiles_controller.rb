class ProfilesController < ApplicationController

	def index
		@profiles = Profile.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pups }
    end
  end

  def new
  	@user = current_user
    @profile = @user.pups.build(params[:pup])
    @profile.creator = @user

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pup }
    end
  end

	def create
		logger.info "Create action in home_controller was triggered here"
		logger.info params.inspect
		logger.info "----- params[:slug] = " + params[:slug] + "-----\n\n"
		@profile = Profile.new

		@profile.creator = current_user.id

		logger.info "--- @profile.inspect: " + @profile.inspect + " ----\n\n"
		@profile.slug = params[:slug]
		logger.info "--- @profile.inspect: " + @profile.inspect + " ----\n\n"

		@profile.users << current_user

		if @profile.save
			logger.info "--- @profile.inspect: " + @profile.inspect + " ----\n\n"
			redirect_to profile_path(@profile)
		else
      format.html { render action: "new" }
      format.json { render json: @profiles.errors, status: :unprocessable_entity }
		end
	end

	def show
		logger.info "--- Hey! params[:id]: " + params[:id] + " -----\n\n"
		@slug = params[:id]
		@profile = Profile.find_by_slug!(@slug)

	end


end
