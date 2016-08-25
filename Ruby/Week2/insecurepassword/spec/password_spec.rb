require_relative ("../lib/password_checker.rb")


RSpec.describe PasswordChecker do
  describe "#check_password_length" do

    it "returns false for passwords shorter than 7 characters" do
      the_checker = PasswordChecker.new

      result = the_checker.check_password_length("nizar@example.com", "aB3.")

      expect( result ).to eq(false)
    end
  end

 describe "#check_letters"   do
    it "returns false for passwords that don't contain letters" do
      the_checker = PasswordChecker.new

      expect( the_checker.check_letters("nizar@example.com", "1234567,.*&") ).to eq(false)
    end
end

describe "check_email" do
    it "returns false for passwords that contain emails" do
      the_checker = PasswordChecker.new

      expect( the_checker.check_email("nizar@example.com", "nizar345") ).to eq(false)
    end

  end


describe "check_password" do
    it "returns false for passwords that dont' contain lowercase uppercase and a symbol" do
      the_checker = PasswordChecker.new

      expect( the_checker.check_email("nizar@example.com", "nizar345") ).to eq(false)
    end

  end





describe "master_password_checker" do
    it "returns true for passwords that meet all criteria" do
      the_checker = PasswordChecker.new

      expect( the_checker.master_password_checker("nizar@example.com", "Abb12*&78&bag") ).to eq(true)
    end

  end


end