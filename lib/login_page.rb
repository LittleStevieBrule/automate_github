class LoginPage
  include PageObject

  def initialize(url = false)
    super(Config.instance.driver, url)
  end

  page_url('https://github.com/login')

  text_field(:login_field, id: 'login_field')

  def login(username, password)
    self.login_field = username
    binding.pry
  end
end