class UserMailer < ApplicationMailer
  default from: email_address_with_name("shivshakannan821@gmail.com", "DailyGrind Cafe")

  def reset_password_email
    @user = User.find_by(email: params[:email])
    @encrypt = BCrypt::Password.create(@user.email)
    # @url = "https://google.com"

    mail(to: email_address_with_name(@user.email, @user.name),
         from: email_address_with_name("shivshakannan821@gmail.com", "DailyGrind Cafe"),
         reply_to: "shivshakannan821@gmail.com",
         subject: "Password Reset link for DailyGrind cafe")
  end
end
