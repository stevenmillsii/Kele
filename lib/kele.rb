require 'httparty'

class Kele
  include HTTParty
  base_uri 'https://www.bloc.io/api/v1'

  def initialize(u, p)
    response = self.class.post '/sessions', body: {email: u, password: p}
    @auth_token = response["auth_token"]
  end
end
