class PageController < ApplicationController
  protect_from_forgery :except => [:inquiry]

    def top
    end

    def lp
      @news= News.all
    end

    def contact
      @contact = Contact.new
    end

    def inquiry
      inquiry = Inquiry.new(
          company: params[:company],
          name: params[:name],
          tel: params[:tel],
          mail: params[:mail],
          confirmation_mail: params[:confirmation_mail],
          subject: params[:subject],
          message: params[:message]
      )
      if verify_recaptcha
        InquiryMailer.send_mail(inquiry).deliver_now
        redirect_to :action => 'contact'
      end
    end

end
