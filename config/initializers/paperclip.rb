# File added in order to try and get images loading up correctly. 
# Whole file should be deleted if it causes an issue sc.
# config/initializers/paperclip.rb
Paperclip::Attachment.default_options[:url] = ':s3_domain_url'
Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'

# config/initializers/paperclip.rb
Paperclip::Attachment.default_options[:s3_host_name] = 's3-eu-central-1.amazonaws.com'
