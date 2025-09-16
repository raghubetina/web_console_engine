# Web Console configuration for /rails/console route
# This will be moved to the engine when extracted

if defined?(WebConsole)
  # For production use (BE VERY CAREFUL!)
  # Uncomment and configure these lines if you want to enable in production:
  
  # Allow web-console to run outside of development
  # Rails.application.config.web_console.development_only = false
  
  # Restrict access to specific IPs only (strongly recommended!)
  # Rails.application.config.web_console.allowed_ips = ['127.0.0.1', '::1', '192.168.1.100']
  
  # Or use CIDR notation for IP ranges:
  # Rails.application.config.web_console.allowed_ips = ['192.168.1.0/24']
  
  # Mount point configuration (default is /__web_console)
  # Rails.application.config.web_console.mount_point = '/__web_console'
end