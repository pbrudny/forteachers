class UserMailer < ApplicationMailer
  def welcome_user(new_user)
    @new_user = new_user
    mail to: new_user.email, subject: I18n.t('user_mailer.welcome_user.subject')
  end
end
