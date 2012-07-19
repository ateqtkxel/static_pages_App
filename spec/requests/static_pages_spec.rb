require 'spec_helper'

describe "Static pages" do


  # Test 1 :content test of home webpage
  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end
   # Test 1.1:  This test check valid title of home page
    it "should have the title 'home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Home")
    end



  end

  # Test 2 :content test of home web page

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
    # Test 2.1:  This test check valid title of Help page

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Help")
    end

  end
  # Test 3: check page existance /missing route etc

  describe "About page" do




    it "should have the content 'about us'" do
      visit '/static_pages/AboutUs'
      page.should have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/AboutUs'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About Us")
    end



  end

  describe "Contact page" do




    it "should have the content 'Contact us'" do
      visit '/static_pages/ContactUs'
      page.should have_content('Contact Us')
    end
    it "should have the title 'Contact Us'" do
      visit '/static_pages/ContactUs'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Contact Us")
    end




  end




end