class ApplicationMailer < ActionMailer::Base
  default from: 'someone.nowhere@mail.com'
  layout 'mailer'
end
