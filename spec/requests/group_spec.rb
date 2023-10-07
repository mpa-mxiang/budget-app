require 'rails_helper'

RSpec.describe GroupController, type: :controller do
  let(:user) { create(:user) }

  describe 'GET #new' do
    it 'renders the new template' do
      sign_in user
      get :new
      expect(response).to render_template(:new)
    end
  end

  describe 'POST #create' do
    it 'creates a new group' do
      sign_in user
      group_params = attributes_for(:group)
      expect do
        post :create, params: { group: group_params }
      end.to change(Group, :count).by(1)
    end

    it 'redirects to the root path on success' do
      sign_in user
      group_params = attributes_for(:group)
      post :create, params: { group: group_params }
      expect(response).to redirect_to(root_path)
      expect(flash[:notice]).to be_present
    end

    it 'handles validation errors' do
      sign_in user
      invalid_group_params = attributes_for(:group, name: nil)
      post :create, params: { group: invalid_group_params }
      expect(response).to render_template(:new)
      expect(assigns(:group).errors).not_to be_empty
    end
  end

  describe 'GET #show' do
    let(:group) { create(:group) }
    it 'renders the show template' do
      sign_in user
      get :show, params: { id: group.id }
      expect(response).to render_template(:show)
    end
  end
end
