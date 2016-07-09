require 'test_helper'

class MoviesControllerTest < ActionController::TestCase
  include Devise::TestHelpers
  
  setup do
    @movie = movies(:one)
  end
  
  test "un usuario logeado pero sin permiso no puede crear una pelicula" do sign_in(users(:not_admin))
    get :new
    assert_response :redirect
  end
  
  test "un usuario normal logeado solo puede ver el indice de peliculas" do sign_in(users(:not_admin))
    get :index
    assert_response :success
  end
  
  test "un administrador puede crear peliculas" do sign_in(users(:admin))
    get :new
    assert_response :success
  end
  
  test "un administrador puede elimitar peliculas" do sign_in(users(:admin))
    assert_difference('Movie.count', -1) do
      delete :destroy, id: @movie
    end
    assert_redirected_to movies_path
  end

end
