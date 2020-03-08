require 'rails_helper'

describe CommentsController, type: :controller do

  let(:user) { create(:user) }
  let(:contribution) { create(:contribution) }
  let(:params) { { user_id: user.id, contribution_id: contribution.id, comment: attributes_for(:comment) } }

  describe 'POST #create' do
    context 'log in' do
      before do
        login user
      end
      context 'can save' do
        subject {
          post :create,
          params: params
        }
        it 'count up review' do
          expect{ subject }.to change(Comment, :count).by(1)
        end
      end
      context 'can not save' do
        let(:invalid_params) { { user_id: user.id, contribution_id: contribution.id, comment: attributes_for(:comment, text: nil) } }
        subject {
          post :create,
          params: invalid_params
        }
        it 'does not count up review' do
          expect{ subject }.not_to change(Comment, :count)
        end
      end
    end

    context 'not log in' do
      it 'redirects to root_path' do
        post :create, params: params
        expect(response).to redirect_to(root_path)
      end
    end
  end

end