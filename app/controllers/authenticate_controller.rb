class AuthenticateController < ApplicationController
	def login
	end

	def register
		@user = Member.new
	end

	def adddata
		x = params[:member]
		y = x[:student_id].to_i
		z = x[:password]
		if !Member.find_by(student_id: y).nil? || Student.find_by(id: y).nil?
			redirect_to authenticate_register_path
		else
			Member.create(student_id: y, password: z)
			redirect_to authenticate_login_path
		end
	end

	def trylogin
		x = params[:student_id]
		id = Member.find_by(student_id: x[0].to_i)
		if !id.nil?
			print(id[:password], params[:password])
			if params[:password][0] == id[:password]
				session[:user] = x[0].to_i
				print(session[:user])
				redirect_to root_path
			else
				redirect_to authenticate_login_path
			end
		else
			redirect_to authenticate_login_path
		end
	end

	def logout
		reset_session
		redirect_to root_path
	end
end
