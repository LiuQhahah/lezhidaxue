require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.new(name:"liuyandong",email:"liuyandong@gmail.com",password:"liuyandong",password_confirmation:"liuyandong")
  end

  test "the user model should be valid" do
    assert @user.valid?
  end

  test "the user name should be present" do
    @user.name = " "
    assert_not @user.valid?
  end

  test "the user name length should not be longer than 20 characters" do
    @user.name = "a"*21
    assert_not @user.valid?
  end

  test "the email validation should accept valid addresses " do
    valid_addresses = %w[liuyandong@gmail.com meSSi@lezhidaxue.com.cn R_7@yahoo.cn]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  test "the email validation should reject invalid addresses" do
    invalid_addresses = %w[l@.cn  horse_cloud@..yahao.com  Ronaldo#gmail.cn]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid? ,"#{invalid_address.inspect} should be invalid"
    end
  end

  test "email addresses should be unique" do
    duplicate_user = @user.dup
    @user.save
    assert_not duplicate_user.valid?
  end

  test "email addresses should be saved as lower-case" do
    mixed_case_email = "LiuYanDong@gmail.com"
    @user.email = mixed_case_email
    @user.save
    assert_equal mixed_case_email.downcase,@user.reload.email

  end

  test "password should be present" do
    @user.password = @user.password_confirmation = " "*6
    assert_not @user.valid?
  end

  test "password should have a minimum length" do
    @user.password = @user.password_confirmation = "a"*5
    assert_not @user.valid?

  end

end
