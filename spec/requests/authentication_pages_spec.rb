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

      describe "in the Microposts controller" do

        describe "submitting to the create action" do
          before { post microposts_path }
          specify { response.should redirect_to(signin_path) }
        end

        describe "submitting to the destroy action" do
          before { delete micropost_path(FactoryGirl.create(:micropost)) }
          specify { response.should redirect_to(signin_path) }
        end
      end

      describe "authorization" do

        describe "for non-signed-in users" do
          let(:user) { FactoryGirl.create(:user) }
        end

        describe "in the Relationships controller" do
          describe "submitting to the create action" do
            before { post relationships_path }
            specify { response.should redirect_to(signin_path) }
          end

          describe "submitting to the destroy action" do
            before { delete relationship_path(1) }
            specify { response.should redirect_to(signin_path) }
          end
        end




        end
   end



