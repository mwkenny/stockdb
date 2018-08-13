# Be sure to restart your server when you modify this file.

# Configure sensitive parameters which will be filtered from the log file.

#Tells Rails not to put passwords or emails in the log files 

Rails.application.config.filter_parameters += [:password]

Rails.application.config.filter_parameters += [:email]