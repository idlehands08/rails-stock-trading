require 'rest-client'

module JokeAPI
  class Request
    BASE_URL = 'https://v2.jokeapi.dev/joke/'
    TOKEN = 'token'

    def self.call(http_method:, endpoint:)
      result = RestClient::Request.execute(
        method: http_method,
        url: "#{BASE_URL}#{endpoint}",
        # url: "#{BASE_URL}#{endpoint}?apikey=#{TOKEN}"
        headers: {'Content-Type'=> 'application/json'}
      )
      {code: result.code, status: 'Success', data:JSON.parse(result)}
      rescue RestClient::ExceptionWithResponse => error
        {code: error.http_code, status: error.message, data:Errors.map(error.http_code)}
    end
  end
    
end