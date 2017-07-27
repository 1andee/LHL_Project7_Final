class ApplicationMailer < ActionMailer::Base
  default from: 'no-reply@pairwise.com'
  layout 'mailer'
end
