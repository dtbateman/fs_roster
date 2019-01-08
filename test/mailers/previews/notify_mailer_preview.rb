# Preview all emails at http://localhost:3000/rails/mailers/notify_mailer
class NotifyMailerPreview < ActionMailer::Preview
 def notify_email_preview
    NotifyMailer.notify_email(Volunteer.last)
  end
end
