require 'spec_helper'

describe 'testing the demoqa registration page' do

  before(:all) do
    @driver = SeleniumDemoReg.new
    @driver.access_registration_form
  end

  context 'positive paths for the registration form and register' do

    it 'should land on the registration for page' do
    end

    it 'should accept a first name' do
      @driver.set_first_name_field("Ken")
      expect(@driver.get_first_name_field_value).to eq "Ken"
      expect(@driver.first_name_field_displayed)
    end

    it 'should accept a last name' do
      @driver.set_last_name_field("Ly")
      expect(@driver.get_last_name_field_value).to eq "Ly"
      expect(@driver.last_name_field_displayed)
    end

    it 'should accept a marital status selection of Single, Married, or Divorced' do
      # @driver.select_marital_option("single")
      # expect(@driver.select_marital_option).to [0]
    end

    it 'should accept a hobby status selection of Dance, Reading, or Cricket' do

    end

    it 'should have a country default of Afhghanistan' do


    end

    it 'accept a new DOB' do

    end

    it 'should accept a new country value' do

    end

    it 'should accept a valid phone number' do
      @driver.set_phone_number_field("44075819723")
      expect(@driver.get_phone_number_field_value).to eql "44075819723"
    end

    it 'should accept a username' do
      @driver.set_user_name_field("USERNAME 1")
      expect(@driver.get_user_name_field_value).to eql "USERNAME 1"
    end

    it 'should accept a about yourself text' do
      @driver.set_about_yourself_field("LOREM IPSUM")
      expect(@driver.get_about_yourself_value).to eql"LOREM IPSUM"
    end

    it 'should accept a password' do
      @driver.set_password_field("PASSWORDQWERTY@1234")
      expect(@driver.get_password_value).to eql "PASSWORDQWERTY@1234"
    end

    it 'should accept a password confirmation' do
      @driver.set_confirmation_password_field("PASSWORDQWERTY@1234")
      expect(@driver.get_confirmation_password_value).to eql "PASSWORDQWERTY@1234"
    end

  end

end
