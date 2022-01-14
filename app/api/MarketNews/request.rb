require 'rest-client'

module MarketNews
  class Request
      BASE_URL = 'https://api.marketaux.com/'
      TOKEN = 'vWxEaDhJ0ck7YRwewMAVY2lBSaIyK1EaPIpokq2u'

      def self.call(http_method:, endpoint:)
          result = RestClient::Request.execute(
              method: http_method,
              url: "#{BASE_URL}#{endpoint}&api_token=#{TOKEN}",
          )
          
          {code: result.code, status: 'Success', data:JSON.parse(result)}
      rescue RestClient::ExceptionWithResponse => error
          {code: error.http_code, status: error.message, data:Errors.map(error.http_code)}
      end
  end
  
end