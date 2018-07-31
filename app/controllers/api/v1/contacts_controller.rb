module Api::V1
    class ContactsController < ApplicationController
        def index
            @contacts = Contact.order("created_at DESC")
            render json: @contacts
        end 

        def show
            
        end


        def create
            @contact = Contact.create(contact_params)
            render json: @contact
        end 

        def update
            @contact = Contact.find(params[:id])
            @contact.update_attributes(contact_params)
            render json: @contact
        end 

        def destroy
            @contact = Contact.find(params[:id])

            if @contact.destroy
                head :no_content, status: :ok
            else
                render json: @contact.errors, status: :unprocessable_entity
            end 
        end

        private

        def contact_params
            params.require(:contact).permit(:name, :email, :phone)
        end 
    end 
end 