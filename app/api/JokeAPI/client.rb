module JokeAPI
  class Client
    def self.any
      response = Request.call(http_method: 'get', endpoint:'/Any?blacklistFlags=nsfw,religious,political,racist,sexist,explicit')
    end

    def self.programming
      response = Request.call(http_method: 'get', endpoint:"/Programming?blacklistFlags=nsfw,religious,political,racist,sexist,explicit")
    end
  end
end