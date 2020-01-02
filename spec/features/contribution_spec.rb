require 'rails_helper'

feature 'contribution', type: :feature do
  let(:user) { create(:user) }

  scenario 'post contribution' do
    # ログイン前には投稿ボタンがない
    visit contributions_path
    expect(page).to have_no_content('投稿ページ')

    # ログイン処理
    visit new_user_session_path
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: user.password
    find('input[name="commit"]').click
    expect(current_path).to eq contributions_path
    expect(page).to have_content('投稿ページ')

    # 投稿する
    expect {
      click_link('投稿ページ')
      expect(current_path).to eq new_contribution_path
      fill_in "genre_id" with: '1'
      fill_in "public_id" with: '1'
      fill_in "title" with: 'test'
      fill_in 'image', with: 'https://s.eximg.jp/expub/feed/Papimami/2016/Papimami_83279/Papimami_83279_1.png'
      fill_in 'text', with: 'フィーチャスペックのテスト'
      find('input[type="submit"]').click
    }.to change(Contribution, :count).by(1)
  end
end