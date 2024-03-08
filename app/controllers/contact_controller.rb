# class ContactController < ApplicationController
#   skip_before_action :authenticate_user!, only: [:index, :new]

#   def new
#     @contact = Contact.new
#   end

#   def submit

#     @contact = Contact.new(contact_params)
#     if @contact.save
#       flash[:success] = 'Your message was successfully submitted.'
#       redirect_to contact_path
#     else
#       render :new
#     end
#   end

#   private

#   def contact_params
#     params.require(:contact).permit(:name, :email, :message)
#   end
# end
