class EventsController < ApplicationController
	def new
		@event = Event.new
	end
	
	def create
		event = params[:event]
		temp = Event.new		
		temp.date = Time.now
		temp.price = event[:price].to_f.abs.round(2)
		temp.description = event[:description][0..250]
		temp.title = event[:title][0..30]
		temp.student_id = session[:user]
		temp.save
		redirect_to events_view_path
	end

	def view
	end

	def show
		@events = Event.all
	end

	def edit
	end

	def delete
		a=Event.find_by(id: params[:id])
		a.destroy
		redirect_to root_path
	end
end
