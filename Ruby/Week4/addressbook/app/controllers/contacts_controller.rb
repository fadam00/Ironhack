class ContactsController < ApplicationController

	def new
		render 'new'
	end

	def create
		contact = Contact.new(
			:name => params[:contact][:name],
			:address => params[:contact][:address],
			:phone_number => params[:contact][:phone],
			:email_address => params[:contact][:email])

		contact.save		

		render(:text =>contact.attributes)
	end
end
