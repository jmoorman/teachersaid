module SessionsHelper

   def sign_in(teacher)
      cookies.permanent[:remember_token] = teacher.remember_token
      self.current_teacher = teacher
   end

   def signed_in?
      !current_teacher.nil?
   end

   def current_teacher=(teacher)
      @current_teacher = teacher
   end

   def current_teacher
      @current_teacher ||= Teacher.find_by_remember_token(cookies[:remember_token])
   end
end
