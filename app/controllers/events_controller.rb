class EventsController < ApplicationController
	def new
		@event = Event.new
	end
	
	def create
		event = params[:event]
		temp = Event.new		
		temp.date = Time.now
		temp.description = event[:description][0..250]
		temp.title = event[:title][0..30]
		temp.admin_id = session[:user]
		temp.active = true
		temp.attendees = "xx"
		temp.save
		redirect_to events_view_path
	end

	def view
	end

	def update
		x = params[:event]
		a = Event.find_by(id: params[:mod])
		a[:title] = x[:title]
		a[:description] = x[:description]
		a.save
		redirect_to events_view_path
	end

	def show
		events = Event.all
		@events = []
		for i in events
			if i.active == true
				@events << i
			end
		end
	end

	def edit
		@a=Event.find_by(id: params[:id])
	end

	def delete
		a=Event.find_by(id: params[:id])
		a.active = false
		a.save
		redirect_to events_view_path
	end

	def attend
		
	end
end
