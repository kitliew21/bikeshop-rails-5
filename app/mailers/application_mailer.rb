class ApplicationMailer < ActionMailer::Base
  default from: 'bike-dublin@heroku-app.com'
  layout 'mailer'
end
