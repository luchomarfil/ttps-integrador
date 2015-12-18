# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end
#Son reglas mas complejas que podrían trasladarse a este ejemplo
#http://lema.rae.es/dpd/srv/search?id=Iwao8PGQ8D6QkHPn4i
ActiveSupport::Inflector.inflections(:es) do |inflect|
  inflect.plural /([^djlnrsyí])$/, '\1s'
  inflect.plural /([djlnrsyí])$/, '\1es'
  inflect.plural /(.*)z/, '\1ces\2'
  inflect.singular /([^djlnrsyí])s/, '\1\2'
  inflect.singular /([djlnrsyí])es/, '\1\2'
  inflect.singular /(.*)ces/, '\1z\2'
end
