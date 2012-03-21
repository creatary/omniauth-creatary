require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class Creatary < OmniAuth::Strategies::OAuth2
      option :name, 'creatary'
      
      option :token_params, {
        :grant_type => 'authorization_code'
      }
      
      option :client_options, {
        :site => 'https://telcoassetmarketplace.com',
        :authorize_url => '/authorize',
        :token_url => '/api/2/oauth/token'
      }
      
      
      uid { access_token.token }
      
      info do 
        {
          #as Creatary users are anonymous, :name as a required parameter must be set to token value
          :name => access_token.token 
        }
      end
      
    end
  end
end