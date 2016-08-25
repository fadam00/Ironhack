class PasswordChecker

	def check_password_length(email, password)
		if password.length < 7
			false
		else 
			true

		end

	end

	def check_letters(email, password)
		if password =~ /[a-zA-Z]/
			true
		else
			false
		end

	end

	def check_password(email, password)
		if password =~ /[a-z]/ &&  password =~ /[A-Z]/ && password =~ /[0-9]/ && password =~ /[\W]/
			true
		else 
			false
		end
	end
		
def check_email(email, password)

		email_array = email.split("@")
		email_array_2 = email_array[1].split(".")

			if  password.include?(email_array[0]) || password.include?(email_array_2[0])
				false
			else
			    true
			end
end

def master_password_checker(email, password)
	if check_password_length(email, password) &&
	 check_letters(email, password) && 
	 check_email(email, password) &&
	 check_password(email, password)
	 
	 true
	else
		false
	

	end


end

end
