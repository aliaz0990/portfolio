# frozen_string_literal: true

class FrontController < ApplicationController
  before_action :set_i18n_locale_from_params
  def index; end

  def resume; end

  def portfolio; end

  def contact
    @contact = Contact.new
  end

  def send_email
    @contact = Contact.new(set_params)
    if !verify_recaptcha(model: @contact) && @contact.save
      ContactMailer.contact_email(@contact).deliver
      ContactMailer.to_me(@contact).deliver
      redirect_to(contact_path, notice: t('email.sent_notice'))
    else
      flash[:alert] = t('email.sent_alert')
      render action: :contact
    end
  end

  def download_pdf
    if params[:locale] == 'en'
      send_file "#{Rails.root}/app/assets/download/cv_en.pdf", type: "application/pdf", x_sendfile: true
    else
      send_file "#{Rails.root}/app/assets/download/cv_es.pdf", type: "application/pdf", x_sendfile: true
    end
  end
  

  private

  def set_params
    params.require(:contact).permit(:name, :email, :subject, :content)
  end

  def set_i18n_locale_from_params
    if params[:locale]
      if I18n.available_locales.map(&:to_s).include?(params[:locale])
        I18n.locale = params[:locale]
      else
        flash.now[:alert] = "#{params[:locale]} translation not available"
        logger.error flash.now[:alert]
      end
    end
  end

  def default_url_options(options = {})
    {locale: I18n.locale}
  end
end
