RSpec.describe 'Login' do

  it 'When I log in I see that I am logged in' do
    login_page = LoginPage.new
    main_page = MainPage.new
    login_page.login('username', 'password')
    expect(main_page.exists?).to eq true
  end
end