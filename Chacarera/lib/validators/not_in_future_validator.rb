class NotInFutureValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    return if value.nil?
    if value > Time.zone.today
      record.errors.add attribute,
                        (options[:message] || "can't be in the future")
    end
  end
end
