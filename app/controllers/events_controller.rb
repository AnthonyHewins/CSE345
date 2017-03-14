class EventsController < ApplicationController

	def list
		@event = Event.find_by(id: params[:id])
		s = @event.attendees
		temp = ""
		n = s.length
		a = []
		s.split("").each do |i|
			if !(i.eql? "x")
				temp << i
				n -= 1
			else
				if n == 0
					break
				else
					cachd = temp.to_i
					if cachd != 0
						a << cachd
					end
					n -= 1
					temp = ""
				end	
			end
		end

		@list = []
		for i in a
			@list << Student.find_by(id: i)
		end
	end

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
		temp.attendees = "x"
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
		a[:date] = Time.now
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
		x = Event.find_by(id: params[:event])
		print(params[:going] + "\n")
		if params[:going].to_i == 1
			x.attendees += params[:id].to_s + "x"
		else
			x.attendees = x.attendees.gsub!("x" + params[:id], "")
		end
		x.save
		redirect_to events_view_path
	end

end
