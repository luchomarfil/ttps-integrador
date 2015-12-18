class NotInFutureValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    return if value.nil?
    if value > Time.zone.today
      record.errors.add attribute,
                        (options[:message] || I18n.translate(:future_date_error,I18n.locale))
    end
  end
end
