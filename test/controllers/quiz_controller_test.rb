require 'test_helper'

class QuizControllerTest < ActionController::TestCase
  
  setup do
    
    @user       = users(:prakash)
    
  end
 
  test "should get index" do
    #log_in_as(@user)
    is_logged_in? do
    get :index
    assert_response :success
    end
  end
  
  test "should get start" do
    #log_in_as(@user)
    is_logged_in? do
    get :start
    assert_response :success
    end
  end
  
  test "should get question" do
   # log_in_as(@user)
   is_logged_in? do
    get :question
    assert_response :success
    end
  end
  
  test "should get end" do
   # log_in_as(@user)
   is_logged_in? do
    get :end
    assert_response :success
    end
  end
  
  test "should redirect index when not logged in" do
    session[:id].nil? do
      assert_redirected_to root_url
    end
  end
  
  test "should redirect start when not logged in" do
    session[:id].nil? do
      assert_redirected_to root_url
    end
  end
  
  test "should redirect question when not logged in" do
    session[:id].nil? do
      assert_redirected_to root_url
    end
  end
  
  test "should redirect end when not logged in" do
    session[:id].nil? do
      assert_redirected_to root_url
    end
  end
end
