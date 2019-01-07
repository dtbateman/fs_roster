class NotifyMailer < ApplicationMailer

	default from: "friendspeak@hillsboro.org"

	def notify_email(volunteer)
	@volunteer= volunteer
    @admin = Volunteer.first
    mail(to: @admin.email, subject: 'New Application from ' + volunteer.first_name+ '!', body: 
'You have new applicants, please go check on your admin dashboard!

You can contact ' + @volunteer.first_name+ ' at: ' +@volunteer.email+ ' 

Glory to God!

In Christ, 

You')
  
  end
end
