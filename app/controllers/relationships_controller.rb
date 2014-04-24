class RelationshipsController < ApplicationController
	before_action :signed_in_user, only: [:create, :destroy]

	def index
	end

	def create
		@relationship = current_user.relationships.build(relationship_params)
		if @relationship.save
			redirect_to root_url
		else
			render 'static_pages/announcements'
		end
	end

	def destroy
	end

	private

	  def relationship_params
	  	params.require(:relationship).permit(:address)
	  end
end
