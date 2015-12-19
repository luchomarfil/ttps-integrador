class Telephone < Contact
  validates :value, numericality: { only_integer: true , message: I18n.translate(:valid_telephone_expected) }
end
