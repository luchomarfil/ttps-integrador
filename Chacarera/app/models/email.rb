class Email < Contact  
  validates :value, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/,message: I18n.translate(:valid_email_expected) }
end
