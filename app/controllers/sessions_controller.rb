class SessionsController < ApplicationController
   
   def new
   end

   def create
      teacher = Teacher.find_by_email(params[:session][:email].downcase)
      if teacher && teacher.authenticate(params[:session][:password])
         sign_in teacher
         redirect_to teacher
      else
         flash.now[:error] = 'Invalid email/password combination'
         render 'new'
      end
   end

   def destroy
   end
end
