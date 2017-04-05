class MessagesController < ApplicationController
	def new
		@message = Message.new
		@message[:post_id] = params[:post_id]
		@message[:sender] = params[:sender]
		@message[:receiver] = params[:receiver]
	end
	
	def create
		m = Message.new
		x = params[:message]
		m.post_id = x[:post_id]
		m.sender = x[:sender]
		m.receiver = x[:receiver]
		m.message = x[:message]
		m.save
		redirect_to services_view_path
	end

	def show
		x = session[:user].to_i
		@message = Message.where(receiver: x)			
	end

	def delete
		Message.find_by(id: params[:id]).destroy
		redirect_to messages_view_path
	end
end
