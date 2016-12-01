require 'rails_helper'

describe UsersController, :type => :controller do

  let(:user) { User.create!(email: 'apple@example.com', password: '1234567890') }
  

  describe 'GET #show' do
     context 'User is logged in' do

     end

     context 'No user is logged in' do
       it 'redirects to login' do
         get :show, id: user.id
         expect(response).to redirect_to(root_path)
       end
     end
  end

end