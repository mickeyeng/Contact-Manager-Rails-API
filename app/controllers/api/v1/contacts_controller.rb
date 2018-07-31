module Api::V1
    class ContactsController < ApplicationController
        def index
            @contacts = Contact.order("created_at DESC")
            render json: @contacts
        end 


        def create
            @contact = Contact.create(contact_params)
            render json: @contact
        end 

        private

        def contact_params
            params.require(:contact).permit(:name, :email, :phone)
        end 
    end 
end 