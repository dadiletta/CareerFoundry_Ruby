require 'rails_helper'

describe StaticPagesController, :type => :controller do
    
    login_user
    
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do 
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "should route root to home page" do
        zing = { :controller => 'static_pages', :action => 'index'}
        assert_recognizes zing, '/'
    end
    #it "renders the index template" do
    #  get :root
    #  expect(response).to render_template("index")
    #end
  end

end