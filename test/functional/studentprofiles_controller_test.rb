require 'test_helper'

class StudentprofilesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Studentprofile.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Studentprofile.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Studentprofile.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to studentprofile_url(assigns(:studentprofile))
  end

  def test_edit
    get :edit, :id => Studentprofile.first
    assert_template 'edit'
  end

  def test_update_invalid
    Studentprofile.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Studentprofile.first
    assert_template 'edit'
  end

  def test_update_valid
    Studentprofile.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Studentprofile.first
    assert_redirected_to studentprofile_url(assigns(:studentprofile))
  end

  def test_destroy
    studentprofile = Studentprofile.first
    delete :destroy, :id => studentprofile
    assert_redirected_to studentprofiles_url
    assert !Studentprofile.exists?(studentprofile.id)
  end
end
