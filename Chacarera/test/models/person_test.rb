require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "create_person_will_pass" do
    Person.create!(legal: false, name: 'Roberto Sanchez', cuil_cuit: '20305759482')
  end

  test "create person without cuil_cuit shoul fail" do
      assert_raises(ActiveRecord::RecordInvalid) {  Person.create!(legal: false, name: 'Roberto Sanchez')  }
  end
end
