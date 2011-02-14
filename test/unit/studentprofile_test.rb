require 'test_helper'

class StudentprofileTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Studentprofile.new.valid?
  end
end
