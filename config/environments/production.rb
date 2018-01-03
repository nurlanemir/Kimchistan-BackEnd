Rails.application.configure do
  config.cache_classes = true

  config.eager_load = true

  config.consider_all_requests_local = false
  config.action_controller.perform_caching = true
  config.read_encrypted_secrets = true

  config.public_file_server.enabled = ENV['RAILS_SERVE_STATIC_FILES'].present?
  config.log_level = :debug

  config.log_tags = [:request_id]

  config.action_mailer.perform_caching = false

  config.i18n.fallbacks = true

  config.active_support.deprecation = :notify

  config.log_formatter = ::Logger::Formatter.new

  config.action_mailer.delivery_method = :smtp
# SMTP settings for gmail
  config.action_mailer.smtp_settings = {
      address: ENV['SMTP_ADDRESS'],
      authentication: ENV['SMTP_AUTH'],
      domain: ENV['SMTP_DOMAIN'],
      enable_starttls_auto: ENV['SMTP_ENABLE_TLS'],
      password: ENV['SMTP_PASSWORD'],
      port: ENV['SMTP_PORT'],
      user_name: ENV['SMTP_USERNAME']
  }

  if ENV["RAILS_LOG_TO_STDOUT"].present?
    logger = ActiveSupport::Logger.new(STDOUT)
    logger.formatter = config.log_formatter
    config.logger = ActiveSupport::TaggedLogging.new(logger)
  end

  config.active_record.dump_schema_after_migration = false
end
