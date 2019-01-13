class NotifyMailer < ApplicationMailer

	default from: "friendspeak@hillsboro.org"

	def notify_email(participant)
	@participant= participant
    @admin = AdminUser.first
    mail(to: @admin.email, subject: 'New Application from ' + participant.first_name+ '!', body: 
'You have new applicants, please go check on your admin dashboard!

You can contact ' + @participant.first_name+ ' at: ' +@participant.email+ '.' +


+ @participant.first_name+ ' is a '+ @participant.role+ ' 


Glory to God!

In Christ, 

You')
  
  end
end
