RSpec.describe 'Login' do

  it 'When I log in I see that I am logged in' do
    landing_page = LandingPage.new
    login_page = LoginPage.new
    main_page = MainPage.new
    landing_page.initiate_sign_in
    login_page.login('username', 'password')
    expect(main_page.exists?).to eq true
  end
end