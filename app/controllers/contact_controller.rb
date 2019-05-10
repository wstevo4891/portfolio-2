# Controller for Contact Page
class ContactController < ApplicationController
  def show
    render
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.valid?
        ContactMailer.with(contact: @contact).contact_email

        format.html { redirect_to contact_thank_you_path, notice: 'Thanks! Your message was delivered.' }
        format.json { render json: @contact, status: :created }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
