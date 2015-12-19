class Cell < Contact
  validates :value, numericality: { only_integer: true,  message: I18n.translate(:valid_cell_expected)  }
end
