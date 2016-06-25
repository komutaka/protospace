# require 'rails_helper'

# describe UsersController do

#   context 'with user login' do
#     describe 'GET #show' do
#       it "assigns the requested user to @user" do
#         user = create(:user)
#         get :show, id: user
#         expect(assigns(:user)).to eq user
#       end
#       it "renders the :show template" do
#         user = create(:user)
#         get :show, id: user
#         expect(response).to render_template :show
#       end
#     end

#     describe 'GET #edit' do
#       it "assigns the requested user to @user" do
#         user = create(:user)
#         get :edit, id: user
#         expect(assigns(:user)).to eq user
#       end
#       it "renders the :edit template" do
#         user = create(:user)
#         get :edit, id: user
#         expect(response).to render_template :edit
#       end
#     end

#     describe 'PATCH #update' do
#       it "assigns the requested user to @user" do
#         user = create(:user)
#         put :update, id: user, user: attributes_for(:user)
#         expect(assigns(:user)).to eq(@user)
#       end
#       it "changes @user's attributes" do
#         user = create(:user)
#         patch :update, id: user, user: attributes_for(:user, nickname: 'komugi')
#         user.reload
#         expect(user.nickname).to eq('komugi')
#       end
#       it "redirects to the updated user" do
#         user = create(:user)
#         patch :update, id: user, user: attributes_for(:user)
#         expect(response).to redirect_to @user
#       end
#     end
#   end

# end
