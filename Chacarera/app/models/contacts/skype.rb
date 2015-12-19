class Skype < Contact
  validates :value, format: { with: /[a-zA-Z][a-zA-Z0-9\.,\-_]{5,31}/,message: I18n.translate(:valid_skype_expected) }
end
