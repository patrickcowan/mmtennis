class EventRegistrationsController < ApplicationController
before_action :signed_in_user, only: [:index, :edit, :update, :destroy, :new]



	def index
		@events = Event.all
		@user = current_user
	end

	def show
		@user = current_user
		if@user = @user.admin
		@event_registration = EventRegistration.find(params[:id])


	    else
	    @event_registration	= current_user.event_registrations.find(params[:id])
		end
	end

	def new
		@event = Event.find(params[:event_id])
		@user = current_user
		@user_id = @user.id

		@event_registration = @event.event_registrations.build({:user_id => @user_id})
	end

	def edit
		@user = current_user
	end

	def create
		@event_registration = EventRegistration.new(event_registration_params)

		if @event_registration.save
			redirect_to @event_registration
        else
        render 'new'
        end
    end
	
	def destroy
		EventRegistration.find(params[:id]).destroy
		redirect_to events_url
	end

	private

		def event_registration_params
			params.require(:event_registration).permit(:address, :first_name, :last_name, :child_age,
			 :child_name, :payment_method, :coaches, :other_details, :event_id, :user_id, users_attributes: [:name, :email],
			 events_attributes: [:title, :Venue, :Date, :Time])
		end
end

