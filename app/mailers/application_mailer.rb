class ApplicationMailer < ActionMailer::Base
  default from: 'Recipe <admin@recipe.com>'
  layout 'mailer'
end
