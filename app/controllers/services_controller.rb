class ServicesController < ApplicationController
	def new
		@service = Service.new
	end
	
	def display
		x = params[:category]
		s = Service.where(category: x)
		if x.eql?("Misc")
			y = Service.where(category: nil)
		end
		@services = []
		for i in s
			if i[:active] || i[:active].nil?
				@services << i
			end
		end
		if !y.nil?
			for i in y
				if i[:active] || i[:active].nil?
					@services << i
				end
			end
		end
	end

	def create
		service = params[:service]
		temp = Service.new
		temp.date = Time.now
		temp.price = service[:price].to_f.abs.round(2)
		temp.description = service[:description][0..250]
		temp.title = service[:title][0..30]
		temp.student_id = session[:user]
		temp.category = service[:category]
		temp.save
		redirect_to services_view_path
	end

	def view
	end

	def update
		x = params[:service]
		a = Service.find_by(id: params[:mod])
		a[:title] = x[:title]
		a[:description] = x[:description]
		a[:price] = x[:price]
		a.save
		redirect_to services_view_path
	end

	def show
		@category = Category.all
	end

	def edit
		@a=Service.find_by(id: params[:id])
	end

	def delete
		a=Service.find_by(id: params[:id])
		a[:active] = false
		a.save
		redirect_to services_view_path
	end
end
