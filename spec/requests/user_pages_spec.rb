require 'spec_helper'

describe "User pages" do

  subject { page }





  describe "signup page" do
    before { visit signup_path }

    it { should have_selector('h1',    text: 'Sign up') }
    it { should have_selector('title', text: full_title('Sign up')) }
  end
end

describe "profile page" do
  # Code to make a user variable
  let(:user) { FactoryGirl.create(:user) }
  before { visit user_path(user) }


end


describe "profile page" do
  let(:user) { FactoryGirl.create(:user) }
  let!(:m1) { FactoryGirl.create(:micropost, user: user, content: "Foo") }
  let!(:m2) { FactoryGirl.create(:micropost, user: user, content: "Bar") }

  before { visit user_path(user) }


end
