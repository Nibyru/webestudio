Paperclip::Attachment.default_options[:storage] = :dropbox
Paperclip::Attachment.default_options[:dropbox_credentials] = Rails.root.join("config/dropbox.yml")