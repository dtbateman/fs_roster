require 'test_helper'

class UserTest < ActiveSupport::TestCase
		def setup  
		@subject = User.new  
		end  
end

test "email should be required" do  
@subject.valid?

assert_includes(@subject.errors[:email], "can’t be blank")  
end  