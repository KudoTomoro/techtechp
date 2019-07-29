Rails.application.configure do
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
      address:              'smtp.techtec.co.jp',
      port:                  587,
      domain:               'techtec.co.jp',
      user_name:            'info@techtec.co.jp',
      password:             'k0409&t0522',
      authentication:       'plain',
      enable_starttls_auto:  false
  }
end
