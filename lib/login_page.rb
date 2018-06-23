class LoginPage
  include PageObject

  def initialize(url = true)
    super(Config.instance.driver, url)
  end

  page_url('https://github.com/login')

  text_field(:username_field, id: 'login_field')
  text_field(:password_field, id: 'password')

  button(:login_button, value: 'Sign in')

  def login(username, password)
    self.username_field = username
    self.password_field = password
    login_button
  end
end

login_page = LoginPage.new
login_page.login('username', 'password')