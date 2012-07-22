require 'spec_helper'
  # The tests for signin failure.
describe "Authentication" do

      describe "signin" do
        before { visit signin_path }

          describe "after visiting another page" do
            before { click_link "Home" }
            it { should_not have_selector('div.alert.alert-error') }
          end




        end
      end

